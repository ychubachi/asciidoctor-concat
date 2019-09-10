require 'asciidoctor/concat'

require 'asciidoctor'
require 'asciidoctor/extensions'

RSpec.describe Asciidoctor::Concat do
  it "has a version number" do
    expect(Asciidoctor::Concat::VERSION).not_to be nil
  end

  it "does something useful" do
    Asciidoctor::Extensions.register do
      block  Asciidoctor::Concat::ConcatBlock
    end
    
    Asciidoctor.convert_file 'sample-with-shout-block.adoc', :safe => :safe
  end
end
