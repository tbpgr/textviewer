require "formatters/base_formatter"

module MessageViewer
  module Formatters
    class PlainFormatter < BaseFormatter
      def self.display(text)
        text
      end
    end
  end
end
