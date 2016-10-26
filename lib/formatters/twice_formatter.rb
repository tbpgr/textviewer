require "formatters/base_formatter"

module MessageViewer
  module Formatters
    class TwiceFormatter < BaseFormatter
      def self.display(text)
        text * 2
      end
    end
  end
end
