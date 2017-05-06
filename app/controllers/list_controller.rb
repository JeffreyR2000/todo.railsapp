class ListController < ApplicationController
    def index
    end
    def show
      @list_name = ['Chores', 'Memes', 'Thoughts', 'People I Hate'].sample
    end
end
