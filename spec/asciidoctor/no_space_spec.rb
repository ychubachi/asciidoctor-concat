require 'asciidoctor/no_space'

require 'asciidoctor'
require 'asciidoctor/extensions'

RSpec.describe Asciidoctor::NoSpace do
  it "has a version number" do
    expect(Asciidoctor::NoSpace::VERSION).not_to be nil
  end

  it "does something useful" do
    Asciidoctor::Extensions.register do
      block  Asciidoctor::NoSpace::NoSpaceBlock
    end
    
    Asciidoctor.convert_file 'sample-with-shout-block.adoc', :safe => :safe
  end
end
