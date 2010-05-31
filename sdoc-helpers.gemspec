$LOAD_PATH.unshift 'lib'
require 'sdoc_helpers/version'

Gem::Specification.new do |s|
  s.name              = "sdoc-helpers"
  s.version           = SDocHelpers::Version.to_s
  s.date              = Time.now.strftime('%Y-%m-%d')
  s.summary           = "Helpers to make using sdoc easier."
  s.homepage          = "http://github.com/defunkt/sdoc-helpers"
  s.email             = "chris@ozmm.org"
  s.authors           = [ "Chris Wanstrath" ]
  s.has_rdoc          = false

  s.files             = %w( README.md Rakefile LICENSE )
  s.files            += Dir.glob("lib/**/*")
  s.files            += Dir.glob("bin/**/*")
  s.files            += Dir.glob("man/**/*")
  s.files            += Dir.glob("test/**/*")

  s.add_dependency    'sdoc', '~> 0.2'
  s.description       = <<desc
  Makes publishing docs with sdoc slightly more pleasant by adding
  support for README.markdown and other small tweaks.
desc
end
