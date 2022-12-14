module LogParser
  class Parser
    def initialize(file_path)
      @file_path = file_path
    end

    def format
      Formatter.new(aggreated_data).format
    end

    private

    def aggreated_data
      Aggregator.new(tokenized_data).group
    end

    def tokenized_data
      Tokenizer.new(read_data).entries
    end

    def read_data
      FileReader.new(@file_path).lines
    end
  end
end
