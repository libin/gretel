module Gretel
  class Link
    attr_accessor :key, :text, :url

    def initialize(key, text, url)
      # Use accessors so plugins can override their behavior
      self.key, self.text, self.url = key, text, url
    end

    def current!
      @current = true
    end

    def current?
      !!@current
    end
  end
end