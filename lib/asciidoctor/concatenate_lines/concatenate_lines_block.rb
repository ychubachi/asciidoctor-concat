require 'asciidoctor'
require 'asciidoctor/extensions'

module Asciidoctor
  module ConcatenateLines
    class ConcatenateLinesProcessor < Asciidoctor::Extensions::TreeProcessor
      def process document
        return unless document.blocks?
        process_blocks document
        nil
      end
    
      def process_blocks node
        node.blocks.each_with_index do |block, i|
          if block.context == :paragraph
            node.blocks[i] = concatenate_lines block
          else
            process_blocks block if block.blocks?
          end
        end
      end

      def concatenate_lines block
        one_line = block.lines.inject do |r, l|
          if /[[:ascii:]]$/.match(r) && /^[[:ascii:]]/.match(l)
            r + ' ' + l
          else
            r + l
          end
        end
        create_paragraph block.document, (one_line), block.attributes
      end
    end
  end
end
