RSpec.describe LogParser::Tokenizer do
  let(:tokenizer) { described_class.new(lines) }
  let(:lines) {
    [
      "/help_page/1 126.318.035.038",
      "/contact 184.123.665.067"
    ]
  }
    describe "#entries" do
      subject{ tokenizer.entries }

      let(:expected_entries) {
        [
          LogParser::Entry.new("/help_page/1", "126.318.035.038"),
          LogParser::Entry.new("/contact", "184.123.665.067")
        ]
      }

      it { is_expected.to eql(expected_entries) }

    end


end
