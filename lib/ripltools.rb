require 'ripl'

module Ripltools
  VERSION = '0.1.4'
end

libraries = %w[multi_line auto_indent short_errors color_error color_result color_streams commands after_rc hirb profiles]

libraries.each{ |lib|
  begin
    require "ripl/#{lib}"

  rescue LoadError => err
    warn "Couldn't load a ripl plugin: #{err}"
  end
}

# J-_-L
