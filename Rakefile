begin
  require 'jeweler'

  $LOAD_PATH.unshift File.dirname(__FILE__) + '/lib'
  require 'sdoc_helpers/version'

  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "sdoc-helpers"
    gemspec.summary = "Simple helpers to make using sdoc easier."
    gemspec.description = "Simple helpers to make using sdoc easier."
    gemspec.email = "chris@ozmm.org"
    gemspec.homepage = "http://github.com/defunkt/sdoc-helpers"
    gemspec.authors = ["Chris Wanstrath"]
    gemspec.version = SDocHelpers::Version.to_s

    gemspec.add_dependency('sdoc', '~> 0.2')
  end
rescue LoadError
  puts "Jeweler not available."
  puts "Install it with: gem install jeweler"
end
