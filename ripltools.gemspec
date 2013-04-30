# -*- encoding: utf-8 -*-
name = 'ripltools'

require 'rubygems' unless defined? Gem
require File.dirname(__FILE__) + "/lib/#{name}/version"
 
Gem::Specification.new do |s|
  s.name        = name
  s.version     = Ripltools::VERSION
  s.authors     = ["Jan Lelis"]
  s.email       = "mail@janlelis.de"
  s.homepage    = "http://github.com/janlelis/" + name
  s.summary     = "A meta gem for ripl plugins"
  s.description = "ripltools is a collection of ripl plugins setting up a nice-to-use general purpose ripl."
  s.add_dependency 'ripl',               '~> 0.7.0'
  s.add_dependency 'gem-man',            '~> 0.3.0'
  s.add_dependency 'hirb',               '~> 0.7.1'
  s.add_dependency 'ripl-multi_line',    '~> 0.3.1'
  s.add_dependency 'ripl-auto_indent',   '~> 0.2.0'
  s.add_dependency 'ripl-short_errors',  '~> 0.1.0'
  s.add_dependency 'ripl-color_error',   '~> 0.1.1'
  s.add_dependency 'ripl-color_result',  '~> 0.4.1'
  s.add_dependency 'ripl-color_streams', '~> 0.1.2'
  s.add_dependency 'ripl-play',          '~> 0.2.1'
  s.add_dependency 'ripl-commands',      '~> 0.2.1'
  s.add_dependency 'ripl-after_rc',      '~> 0.1.0'
  s.add_dependency 'ripl-profiles',      '~> 0.2.1'
  s.add_dependency 'ripl-i18n',          '~> 0.3.2'
  s.files = Dir.glob(%w[{lib,test}/**/*.rb bin/* [A-Z]*.{txt,rdoc} ext/**/*.{rb,c} **/deps.rip]) + %w{Rakefile ripltools.gemspec}
  s.extra_rdoc_files = ["README.rdoc", "LICENSE.txt"]
  s.license = 'MIT'
end
