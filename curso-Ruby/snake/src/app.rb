require_relative "view/ruby2d"
require_relative "model/state"

view = View::Ruby2dView.new

initial_state = Model::initial_state
view.render(initial_state)

class App
    def start
        view = View::Ruby2dView.new
        initial_state = Model::initial_state
        view.render(initial_state)
    end
    
    def init_timer
        loop do
            sleep 0.5
            # trigger movement
        end
      end
    end
end