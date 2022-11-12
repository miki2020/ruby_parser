RSpec.describe LogParser::Parser do
  let(:parser) { described_class.new("any/file") }

  describe "#format" do
    subject { parser.format }

    let(:reader) {
      instance_double(LogParser::FileReader, lines: ["/about 1.1.1.1", "/home 2.2.2.2"])
    }

    before do
      allow(LogParser::FileReader).to receive(:new).with("any/file").and_return(reader)
    end
    
    it { is_expected.to include("Total visits:") }
  end
end
