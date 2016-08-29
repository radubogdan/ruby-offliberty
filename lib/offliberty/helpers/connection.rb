module Offliberty
  module Helpers
    class Connection
      attr_reader :form, :agent

      def initialize song_url
        @agent = Mechanize.new
        @agent.user_agent_alias = 'Mac Safari'
        @page = @agent.get("http://offliberty.com")
        @form = @page.forms.fetch(0)
        @form.action = "http://offliberty.com/off03.php"
        @form.track = song_url
      end
    end
  end
end
