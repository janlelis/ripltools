require 'ripl'

module Ripltools
  VERSION = '0.1.7'
end

libraries = %w[multi_line auto_indent short_errors color_error color_result color_streams commands after_rc hirb profiles]

libraries.each{ |lib|
  begin
    require "ripl/#{lib}"

  rescue LoadError, Gem::LoadError
    warn "Couldn't load a ripl plugin: #{$!}"
  end
}

# J-_-L
