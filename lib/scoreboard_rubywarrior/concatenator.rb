module ScoreboardRubywarrior
  class Concatenator
    def initialize(path)
      @path = path
      @contents_of_files = ""
    end

    def concatenate
      raise ScoreboardRubywarrior::InvalidPlayerDirectory, "player.rb not present" unless player_file_exists?
      all_ruby_files.each do |file|
        append_file(file)
      end

      contents_of_files
    end


    private

    attr_reader :path
    attr_accessor :contents_of_files

    def all_ruby_files
      Dir["#{path}/**/**/*.rb"]
    end

    def append_file(file)
      file_name = Pathname.new(file).basename
      file_contents = File.read(file)

      contents_of_files << "#" << file_name.to_s << "\n"
      contents_of_files << "#---------------" << "\n"
      contents_of_files << file_contents << "\n"
      contents_of_files << "#---------------" << "\n"
    end

    def player_file_exists?
      File.exist?(path + "/player.rb")
    end
  end
end
