# frozen_string_literal: true

module CSP
  module Commands
    module License
      class View < ::CSP::Commands::BaseCommand
        def cpconfig
          @cpconfig ||= @config.cpconfig
        end

        def execute
          result = ::CSP::Shell.new("#{cpconfig} -license -view").execute
          exit(result.exit_code) unless result.ok

          puts result
        end
      end
    end
  end
end
