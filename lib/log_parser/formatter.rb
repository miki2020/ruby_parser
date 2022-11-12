module LogParser
  class Formatter
    def initialize(aggregator_result)
      @aggregator_result = aggregator_result
    end

    def format
      <<~EOF
      Total visits:
      #{total_visits}

      Unique views:
      #{unique_views}
      EOF
    end

    private

    def total_visits
      @aggregator_result.sort_by_total.map do |path, accumulator|
        "#{path} #{accumulator.total} visits"
      end.join("\n")
    end

    def unique_views
      @aggregator_result.sort_by_unique.map do |path, accumulator|
        "#{path} #{accumulator.unique} unique views"
      end.join("\n")
    end
  end
end
