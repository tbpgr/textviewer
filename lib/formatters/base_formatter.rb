module MessageViewer
  module Formatters
    class BaseFormatter
      def self.inherited(child)
        child.name =~ /^.*Formatters::(?<plugin_name>.*)Formatter$/
        key = Regexp.last_match[:plugin_name].downcase.to_sym
        MessageViewer.formatters[key] = child
      end
    end
  end
end
