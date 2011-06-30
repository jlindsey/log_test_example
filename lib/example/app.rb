module Example
  class App
    attr :config

    def initialize opts = {}
      self.config = {
        name:   "Foobar",
        type:   :widget,
        serial: "abc123"
      }.merge opts

      Example.logger.debug "App initialized with config: #{self.config}"
    end

    def run
      Example.logger.info "Run started"
      perform_action
      clean_up
      Example.logger.info "Run completed"
    end

    private

    def perform_action
      Example.logger.debug "Performing action..."
      Example.logger.error "Widgets can't perform this action!" if self.config[:type] == :widget
    end

    def clean_up
      Example.logger.debug "Cleaning up..."
    end
  end
end

