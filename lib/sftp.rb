require 'net/sftp'
class SFTP
  # check: http://www.rubydoc.info/gems/net-sftp/2.0.5
  # ====================================================================
  def initialize host, username, password
    @sftp = Net::SFTP.start(host, username, :password => password)
  end
  # ====================================================================
  def upload local_path, remote_path
    @sftp.upload!(local_path, remote_path)
  end
  # ====================================================================
  def download remote_path, local_path="."
    @sftp.download!(remote_path, local_path)
  end
  # ====================================================================
  def file_info remote_path

  end
end