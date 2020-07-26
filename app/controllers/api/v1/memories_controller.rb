class Api::V1::MemoriesController < ApplicationController

    def index 
        memories = Memory.all 
        render json: memories
    end

    def create 
        memory = Memory.find_create_by(memories_params)
        if memory.valid?
            memory.save
            render json: memory
        else
            render json: {errors: memory.errors.full_messages}, status: unprocessible_entity
        end
    end

    

    private

    def memories_params
        params.require(:memory).permit(:title, :description, :date, :image_url, :category_id)
    end
end

