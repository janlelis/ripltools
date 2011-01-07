require 'ripl'

module Ripltools
  VERSION = '0.1.1'
end

libraries = %w[multi_line auto_indent short_errors color_error color_result color_streams rocket commands after_rc hirb profiles]
# btw, the rocket is coming soon ;)

libraries.each{ |lib|
  begin
    require "ripl/#{lib}"

  rescue LoadError => err
    warn "Couldn't load a ripl plugin: #{err}"
  end
}

# J-_-L
