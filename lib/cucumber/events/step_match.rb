module Cucumber
  module Events

    # Event fired when a step is matched to a definition
    class StepMatch

      # The test step that was matched.
      #
      # @return [Cucumber::Core::Test::Step]
      attr_reader :test_step

      # Information about the matching definition.
      #
      # @return [Cucumber::StepMatch]
      attr_reader :step_match

      # @private
      def initialize(test_step, step_match)
        @test_step, @step_match = test_step, step_match
        $Current_Test_step = @test_step
      end
    end
  end
end
