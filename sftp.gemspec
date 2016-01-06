Gem::Specification.new do |s|
  s.name          = 'sftp'
  s.version       = '0.0.1'
  s.date          = '2016-01-06'
  s.summary       = "SFTP accessor"
  s.description   = "Handles with SFTP downloads and uploads..."
  s.authors       = ["Fábio Costa"]
  s.email         = 'fabioatc@gmail.com'
  s.files         = `git ls-files`.split($/)
  s.homepage      = ''

  s.add_dependency 'net/sftp'
end
