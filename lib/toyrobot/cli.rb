module ToyRobot
  # Parse options and run command
  class CLI
    def initialize
      options = { file: nil, x: 5, y: 5 }
      parser = OptionParser.new do |opts|
        opts.banner = 'Usage: toyrobot [options]'
        parse_filename(opts, options)
      end
      parser.parse!
      @application = ToyRobot::App.new(options)
    end

    def start
      @application.start
    end

    private

    def parse_filename(input_opts, app_opts)
      description = 'Filepath for input commands'
      short_description = '--file filepath'
      input_opts.on('-f', short_description, description) do |fn|
        app_opts[:file] = fn
      end
    end

    def handle_parsing_errors(message)
      puts message
      puts app_opts
      exit
    end
  end
end
