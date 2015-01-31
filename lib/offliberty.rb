require "offliberty/version"
require "offliberty/helpers/connection"
require "mechanize"

module Offliberty
  class Off
    def initialize song_url
      @page = Offliberty::Helpers::Connection.new(song_url)
    end
    
    def offliberate
      res = @page.form.submit
      song_url = res.links.fetch(0).href
    end

    def download
      song_url = offliberate
      file = @page.agent.get(song_url)
      filename = file.filename.gsub("_-_from_YouTube", "").gsub("_", " ")
      file.save(filename)
    end
  end
end
