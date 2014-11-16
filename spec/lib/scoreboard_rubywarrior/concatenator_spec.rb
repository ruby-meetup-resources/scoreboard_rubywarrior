require 'spec_helper'

describe ScoreboardRubywarrior::Concatenator do
  let(:path) { File.expand_path('../../../fixtures/temp_ruby/', __FILE__) }

  it "should return a string representing all the files" do
    content = ScoreboardRubywarrior::Concatenator.new(path).concatenate
    expect(content).to match('def method_two')
    expect(content).to match('class FileOne')
    expect(content).to match('class FileTwo')
    expect(content).to match('class FileThree')
  end
end
