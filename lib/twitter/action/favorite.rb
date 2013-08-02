require 'twitter/action/tweet'

module Twitter
  module Action
    class Favorite < Twitter::Action::Tweet
      attr_reader :target_objects

      # A collection containing the favorited tweet
      #
      # @return [Array<Twitter::Tweet>]
      def targets
        @targets = Array(@attrs[:targets]).map do |tweet|
          Twitter::Tweet.new(tweet)
        end
      end

    end
  end
end

#i'm a comment being added for example to rspec
def new
end