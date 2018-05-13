class TopicsController < ApplicationController
    
    def index
        @topics = Topic.all
    end
    
    def show
        @topic = Topic.find(params[:id])
    end
    
    def new
        @topic = Topic.new 
    end
    
    def create
        @topic = Topic.new
        @topic.name = params[:topic][:name]
        @topic.description = params[:topic][:description]
        @topic.public = params[:topic][:public]
        
        if @topic.save
           redirect_to @topic, notice: "Topic #{@topic.id} was created"
        else
            flash.now[:alert] = "Error, please try again.."
            render :new
        end
    end
    
    def edit
        @topic = Topic.find(params[:id])
    end
    
end
