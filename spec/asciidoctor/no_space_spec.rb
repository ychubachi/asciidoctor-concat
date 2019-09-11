require 'asciidoctor/no_space'

input1 = <<EOS
今日の天気は
晴れでしょう．
It is
fine today.
EOS

output1 = <<EOS
<div class="paragraph">
<p>今日の天気は
晴れでしょう．
It is
fine today.</p>
</div>
EOS

input2 = <<EOS
[no_space]
:hoge:
今日の天気は
晴れでしょう．
It is
fine today.
EOS

output2 = <<EOS
<div class="paragraph">
<p>今日の天気は晴れでしょう．It isfine today.</p>
</div>
EOS

RSpec.describe Asciidoctor::NoSpace do
  it "has a version number" do
    expect(Asciidoctor::NoSpace::VERSION).not_to be nil
  end

  it "convines multiple lines without LF characters" do
    expect((Asciidoctor.convert input1) + "\n").to eq output1
    expect((Asciidoctor.convert input2) + "\n").to eq output2
  end
end
