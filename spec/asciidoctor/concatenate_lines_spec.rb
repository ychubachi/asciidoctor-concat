require 'asciidoctor/concatenate_lines'

input1 = <<EOS
今日の天気は
晴れでしょう。
It is
fine today.
EOS

output1 = <<EOS
<div class="paragraph">
<p>今日の天気は晴れでしょう。It is fine today.</p>
</div>
EOS

input2 = <<EOS
今日の天気は
ヤッター
晴れでしょう．
Yeah!
432.1 -
123.4
= 333.3
EOS

output2 = <<EOS
<div class="paragraph">
<p>今日の天気はヤッター晴れでしょう．Yeah! 432.1 - 123.4 = 333.3</p>
</div>
EOS

RSpec.describe Asciidoctor::ConcatenateLines do
  it "has a version number" do
    expect(Asciidoctor::ConcatenateLines::VERSION).not_to be nil
  end

  it "convines multiple lines without LF characters" do
    expect((Asciidoctor.convert input1) + "\n").to eq output1
    expect((Asciidoctor.convert input2) + "\n").to eq output2
  end
end
