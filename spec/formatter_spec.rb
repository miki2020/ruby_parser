RSpec.describe LogParser::Formatter do
  let(:formatter) { described_class.new(aggregator_result) }
  let(:aggregator_result) {
    LogParser::AggregatorResult[
        "/about" => instance_double(LogParser::Accumulator, unique: 5, total: 100),
        "/home" => instance_double(LogParser::Accumulator, unique: 10, total: 25),
        "/contact-us" => instance_double(LogParser::Accumulator, unique: 2, total: 140)
    ]
  }

  describe "#format" do
    subject { formatter.format }

    let(:expected_format) {
      <<~EOF
      Total visits:
      /contact-us 140 visits
      /about 100 visits
      /home 25 visits

      Unique views:
      /home 10 unique views
      /about 5 unique views
      /contact-us 2 unique views
      EOF
    }

    it { is_expected.to eql(expected_format)}
  end
end
