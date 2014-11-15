module ScoreboardRubywarrior
  class Reporter
    REPORTER_API_ENDPOINT_BASE_URI = 'http://chchruby-warrior.herokuapp.com/'

    include HTTParty
    base_uri REPORTER_API_ENDPOINT_BASE_URI

    def self.send_level_update(report)
      post('/scores', body: report.to_json,
                headers: { 'Content-Type' => 'application/json' })
    end
  end
end
