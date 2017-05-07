class ListController < ApplicationController
    def index
    end
    
    def first 
    end
    
    def second
    end
    
    def show
      @id = params['id']
      
      @list = List.find_by_id(@id)
      
      if @id == '1'
        @list_name = 'Chores'
        @todo_desc_1 = 'laundry'
        @todo_desc_2 = 'clean room'
      elsif @id == '2'
        @list_name = 'homework'
        @todo_desc_1 = 'write english paper'
        @todo_desc_2 = 'do math homework'
      else 
        @list_name = 'nothing'
        @todo_desc_1 = 'you are free'
        @todo_desc_2 = 'nevermind you have an essay'
      end
    end
    
    def new
    end
    
    def create
      @name = params['name']
      @list=List.new
      @list.name = @name
      @list.save
      
      redirect_to "/list/#{@list.id}"
    end
end

