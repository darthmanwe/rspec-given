module RSpec
  module Given
    class FileCache
      def initialize
        @lines = {}
      end

      def get(file_name)
        @lines[file_name] ||= open(file_name) { |f| f.readlines }
      end
    end
  end
end
