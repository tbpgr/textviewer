require "formatters/base_formatter"

module MessageViewer
  module Formatters
    class UpperFormatter < BaseFormatter
      def self.display(text)
        text.upcase
      end
    end
  end
end
