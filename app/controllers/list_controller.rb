class ListController < ApplicationController
    def index
    end
    def first 
    end
    def second
    end
    def show
      @list_name = 'Chores'
      @todo_descriptions = ['laundry', 'Vaccum room', 'go to school']
      @id = params['id']
    end
end
