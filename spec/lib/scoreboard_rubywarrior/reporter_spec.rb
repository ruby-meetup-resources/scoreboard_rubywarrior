require 'spec_helper'

describe ScoreboardRubywarrior::Reporter do
  let(:report_hash) { {
                        warrior_name: 'Trogdor',
                        level_score: 10,
                        time_bonus: 20,
                        clear_bonus: 30,
                        total_score: 60
                      }
                    }

  before do
    stub_request(:post, ScoreboardRubywarrior::Reporter::REPORTER_API_ENDPOINT_BASE_URI).
    with(:body => "{\"level_score\":0,\"time_bonus\":0,\"total_score\":\"0\",\"warrior_name\":null}",
         :headers => {'Content-Type'=>'application/json'}).
    to_return(:status => 200, :body => "", :headers => {})
  end

  it "should post the details of a level" do
    ScoreboardRubywarrior::Reporter.should_receive(:post)
    ScoreboardRubywarrior::Reporter.send_level_update(report_hash)
  end
end
