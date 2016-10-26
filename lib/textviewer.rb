require 'rubygems'

module MessageViewer
  def self.formatters
    @formatters ||= {}
  end

  class Viewer
    def self.run(text, formatters)
      load_formatters
      formatters.map{|e|MessageViewer.formatters[e]}
                .compact
                .reduce(text){|a, f|f.display(a)}
    end

    private

    def self.load_formatters
      ::Gem.find_files('formatters/*_formatter.rb').each { |formatter| require formatter }
    end
  end
end
require 'formatters'
