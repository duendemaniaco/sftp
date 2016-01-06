SFTP
====

Simple ruby SFTP handler using the most basics of the 'net-sftp' gem.

Installation
------------

```sh
$ git clone [git-repo-url] sftp
$ cd sftp
$ gem build sftp.gemspec
$ gem install sftp-0.0.1.gem
```

Usage
-----

```ruby
require 'sftp'

sftp = SFTP.new("host", "user", "password")

sftp.download "path/to/remote", "path/to/local"

sftp.upload "path/to/local", "path/to/remote"
```

License
--------
[Attribution 4.0 International (CC BY 4.0)][LICENSE]

[LICENSE]: http://creativecommons.org/licenses/by/4.0/
