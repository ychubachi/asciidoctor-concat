require "asciidoctor/concat_lines/version"
require 'asciidoctor/extensions'

require_relative "concat_lines/concat_lines_block"

Asciidoctor::Extensions.register do
  treeprocessor Asciidoctor::ConcatLines::ConcatLinesProcessor
end
