module LogParser
  class FileReader
    def initialize(path)
      @path = path
    end

    def lines

      File.open(@path).each.map(&:chomp)
    rescue Errno::ENOENT, Errno::EACCESS => e
      raise LogParser::Error, e.message
    end
  end
end
