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

  context 'path not containing player.rb' do
    let(:path) { File.expand_path('../../../fixtures/', __FILE__) }

    it "should rbinding.pryaise an error" do
      expect{ScoreboardRubywarrior::Concatenator.new(path).concatenate}.to raise_exception(ScoreboardRubywarrior::InvalidPlayerDirectory)
    end
  end
end
