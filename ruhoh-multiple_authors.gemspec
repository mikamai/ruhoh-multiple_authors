# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruhoh/multiple_authors/version'

Gem::Specification.new do |gem|
  gem.name              = "ruhoh-multiple_authors"
  gem.version           = Ruhoh::MultipleAuthors::VERSION
  gem.date              = Time.now.strftime('%Y-%m-%d')
  gem.license           = "http://www.opensource.org/licenses/MIT"
  gem.summary           = 'Multiple Authors plugin for Ruhoh'
  gem.homepage          = "http://github.com/mikamai/ruhoh-multiple_authors"
  gem.email             = "nicola@mikamai.com"
  gem.authors           = ['Nicola Racco']
  gem.description       = 'MultipleAuthors simplifies the management of multiple authors blogs'
  gem.files             = `git ls-files`.split($/)
  gem.executables       = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files        = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths     = ["lib"]

  # dependencies defined in Gemfile
  gem.add_dependency 'ruhoh', "~> 2.5"
end
