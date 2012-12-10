Gem::Specification.new do |s|
  APP_VERSION = File.open('./VERSION').read.strip

  s.platform    = Gem::Platform::RUBY
  s.name        = 'webgrep'
  s.version     = APP_VERSION
  s.summary     = %q{Search for text-patterns in URLs periodically}

  s.description = %q{Check URLs and report back if text-patterns are } +
    %q{found.  Behavior is sought to emulate the CLI tool grep as } +
    %q{close as possible.}

  s.license     = 'CC-BY-3.0'

  s.author      = 'Andrew Burnheimer'
  s.email       = 'ABurnheimer@gmail.com'
  s.homepage    = 'https://github.com/aburnheimer/webgrep'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")

  s.add_runtime_dependency('httparty')
  s.add_runtime_dependency('trollop')
  s.add_runtime_dependency('activesupport')
  s.add_runtime_dependency('json')
  s.add_runtime_dependency('logging')
  s.add_runtime_dependency('eventmachine')
end
