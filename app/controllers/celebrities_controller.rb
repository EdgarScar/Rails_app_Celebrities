class CelebritiesController < ApplicationController
skip_before_action :verify_authenticity_token
before_action :setup_data

    def index
    end 

    def show
        @celebrities = @celebrities[params[:id].to_i]
    end 

    def create 
        @celebrities << {:first_name => params[:first_name], :last_name => params[:last_name], :notability => params[:notability]}
        render json: @celebrities
    end 

    def update 
        @celebrities[params[:id].to_i].update(:first_name => params[:first_name], :last_name => params[:last_name], :notability => params[:notability])
        render json: @celebrities
    end 

    def delete
        @celebrities.delete_at(params[:id].to_i)
        render json: @celebrities
    end 

    private
    def setup_data
        @celebrities = [
            {first_name: "Lindsay", last_name: "Lohan", notability: "Parent Trap"},
            {first_name: "Adam", last_name: "Sandler", notability: "Big Daddy"},
            {first_name: "Rob", last_name: "Schnider", notability: "Adam Sandler"}
        ]
    end
end
