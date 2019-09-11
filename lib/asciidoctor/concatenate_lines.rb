require "asciidoctor/concatenate_lines/version"
require 'asciidoctor/extensions'

require_relative "concatenate_lines/concatenate_lines_block"

Asciidoctor::Extensions.register do
  treeprocessor Asciidoctor::ConcatenateLines::ConcatenateLinesBlock
end
