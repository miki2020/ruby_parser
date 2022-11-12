module LogParser
  class AggregatorResult < Hash
    def sort_by_total
      sort_by { |_,vievs| -vievs.total}
    end

    def sort_by_unique
      sort_by { |_,vievs| -vievs.unique}
    end

  end

end
