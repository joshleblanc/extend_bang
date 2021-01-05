require "extend_bang/version"
require "core_extensions/object"

module ExtendBang
  class Error < StandardError; end
end

Object.include CoreExtensions::Object
