module Actions
    def self.move_snake(state)
        next_direction = state.next_direction
        next_position = calc_next_position(state)
        # verificar que la siguiente casilla sea valida
        if next_position_is_valid?(state, next_position)
            move_snake_to(state, next_position)
        else
            end_game(state)
        end
    end

        private

        def calc_next_position(state)
            curr_position = state.snake.positions.first
            case state.next_direction
            when UP = :up
                #decrementar fila
                return Model::Coord.new(
                    curr_position.row - 1,
                    curr_position.col)
            when RIGHT = :rigth
                return Model::Coord.new(
                    curr_position.row,
                    curr_position.col + 1)
                #incrementar col
            when DOWN = :down
                return Model::Coord.new(
                    curr_position.row + 1,
                    curr_position.col)
                #incrementar fila
            when LEFT = :left
                return Model::Coord.new(
                    curr_position.row,
                    curr_position.col - 1)
                #Decrementar col
            end
        end

        def next_position_is_valid?(state, position)
            #verificar que este en la grilla
            is_invalid = ((position.row >= state.grid.rows &&
              position.row < 0) ||
              (position.col >= state.grid.cols ||
                position.col < 0))
            return false if is_invalid
            #verificar que no este superponiendo
            return !(state.snake.positions.include? position)
        end

        def move_snake_to(state, next_position)
        
        end
            
        #si no es valida terminamos el juego 
        # si es valida movemos la serpiente

    end
end