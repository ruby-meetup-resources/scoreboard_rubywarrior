require 'spec_helper'
module ScoreboardRubywarrior
  describe Reporter do
    let(:report_hash) { {
                          warrior_name: 'Trogdor',
                          level_score: 10,
                          time_bonus: 20,
                          clear_bonus: 30,
                          total_score: 60
                        }
                      }

    before do
      stub_request(:post, Reporter::REPORTER_API_ENDPOINT_URI).
      with(:body => "{\"level_score\":0,\"time_bonus\":0,\"total_score\":\"0\",\"warrior_name\":null}",
           :headers => {'Content-Type'=>'application/json'}).
      to_return(:status => 200, :body => "", :headers => {})
    end

    it "should post the details of a level" do
      Reporter.should_receive(:post)
      Reporter.send_level_update(report_hash)
    end

    describe 'endpoints' do
      it "should have a default endpoint" do
         Reporter.endpoint.should eq(Reporter::REPORTER_API_ENDPOINT_URI)
      end
    end

    it "should be possible to specify a different endpoint" do
      allow(Dir).to receive(:pwd).and_return(File.expand_path('../../../fixtures/', __FILE__) )
       Reporter.endpoint.should eq('http://mytest.example.com/endpoint')
    end
  end

end
