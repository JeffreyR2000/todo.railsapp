class ListController < ApplicationController
    def index
    end
    def show
      @list_name = 'Chores'
      @todo_description = ['laundry', 'Vaccum room', 'go to school']
    end
end
