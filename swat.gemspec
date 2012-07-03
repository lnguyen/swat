lib = File.join(File.dirname(__FILE__), 'lib')
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name        = 'swat'
  spec.version     = '0.0.1'
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ['Long Nguyen']
  spec.email       = ['long.nguyen11288@gmail.com']
  spec.homepage    = 'https://github.com/longnguyen11288/swat'
  spec.summary     = 'Swat'
  spec.description = 'Sinatra Watir Automation Tests'

  spec.required_ruby_version = '~> 1.9.3'
  spec.required_rubygems_version = '>= 1.8.23'

  spec.add_dependency 'sinatra-base'
  spec.add_dependency 'puma'
  spec.add_dependency 'haml'

  spec.add_development_dependency 'rake'

  spec.require_path = 'lib'
  spec.executables  = ['swat']
  spec.files        = Dir.glob('{bin,lib}/**/*') + %w(README.md History.md config.ru)
end
