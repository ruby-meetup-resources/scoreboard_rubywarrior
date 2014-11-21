module ScoreboardRubywarrior
  class Reporter
    REPORTER_API_ENDPOINT_URI = 'http://rubywarrior.herokuapp.com/scores'

    include HTTParty
    base_uri REPORTER_API_ENDPOINT_URI

    def self.send_level_update(report)
      post(endpoint, body: report.to_json,
                headers: { 'Content-Type' => 'application/json' })
    end

    def self.endpoint
      cusom_endpoint || REPORTER_API_ENDPOINT_URI
    end


    private

    def self.cusom_endpoint
      endpoint_file = Pathname.new(Dir.pwd).join('.scoreboard_endpoint')
      if File.exist?(endpoint_file)
        return File.read(endpoint_file).strip
      end
      nil
    end
  end
end
