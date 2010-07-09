if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.3.6')
  $LOAD_PATH.unshift File.dirname(__FILE__)
  require 'gemcutter'
end
