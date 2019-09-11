require 'asciidoctor'
require 'asciidoctor/extensions'

module Asciidoctor
  module NoSpace
    class Error < StandardError; end
    class NoSpaceBlock < Asciidoctor::Extensions::BlockProcessor
      use_dsl
    
      named :no_space
      on_context :paragraph
      parse_content_as :simple
    
      def process parent, reader, attrs
          create_paragraph parent, (reader.lines.inject {|r, l| r + l}), attrs
      end
    end
  end
end
