# -*- encoding: utf-8 -*-
name = 'ripltools'

require 'rubygems' unless defined? Gem
require File.dirname(__FILE__) + "/lib/" + name
 
Gem::Specification.new do |s|
  s.name        = name
  s.version     = Ripltools::VERSION
  s.authors     = ["Jan Lelis"]
  s.email       = "mail@janlelis.de"
  s.homepage    = "http://github.com/janlelis/" + name
  s.summary = "A meta gem for ripl plugins"
  s.description = "This is a meta gem which installs some useful ripl plugins for a nice-to-use general purpose ripl."
  s.required_rubygems_version = ">= 1.3.6"
  s.add_dependency 'ripl',               '>= 0.2.8'
  s.add_dependency 'gem-man'
  s.add_dependency 'hirb',               '>= 0.3.5'
  s.add_dependency 'ripl-multi_line',    '~> 0.2'
  s.add_dependency 'ripl-auto_indent',   '~> 0.1'
  s.add_dependency 'ripl-short_errors',  '~> 0.1'
  s.add_dependency 'ripl-color_error',   '~> 0.1'
  s.add_dependency 'ripl-color_result',  '~> 0.2'
  s.add_dependency 'ripl-color_streams', '>= 0.1.2'
  s.add_dependency 'ripl-play'
  s.add_dependency 'ripl-commands'
  s.add_dependency 'ripl-after_rc',      '~> 0.1'
  s.add_dependency 'ripl-profiles',      '>= 0.1.2'
  s.files = Dir.glob(%w[{lib,test}/**/*.rb bin/* [A-Z]*.{txt,rdoc} ext/**/*.{rb,c} **/deps.rip]) + %w{Rakefile .gemspec}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.license = 'MIT'
end