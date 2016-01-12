APP_ROOT = File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
$: << File.join(APP_ROOT, 'lib/sftp') # so rspec knows where your file could be
require "spec_helper"
require "fileutils"

describe "SFTP" do 
  it "is connected to host" do
    sftp = SFTP.new('localhost', 'fabiosftp', 'xxxxxx')

    expect(sftp.class.to_s).to eq("SFTP")
  end

  it "uploads and downloads a file" do
    sftp = SFTP.new('localhost', 'fabiosftp', 'xxxxxx')

    local_file_path = "./spec/assets/upload.txt"
    remote_file_path = "./www/upload.txt"
    local_new_file_path = "./spec/assets/upload_remote.txt"

    sftp.upload(local_file_path, remote_file_path)

    sftp.download remote_file_path, local_new_file_path
    expect(FileUtils.compare_file(local_file_path,local_new_file_path)).to eq(true)
    
    sftp.remove(remote_file_path)
    FileUtils.rm(local_new_file_path)
  end

  xit "get a file info"
end