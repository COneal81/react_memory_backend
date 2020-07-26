class Api::V1::MemoriesController < ApplicationController

    def index 
        memories = Memory.all 
        render json: MemorySerializer.new(memories)
    end

    def create 
        memory = Memory.find_create_by(memories_params)
        if memory.valid?
            memory.save
            render json: MemorySerializer.new(memory), status: :accepted
        else
            render json: {errors: memory.errors.full_messages}, status: unprocessible_entity
        end
    end

    def update 
        memory = Memory.find(params [:id])
        memory.update(memories_params)
        render json: MemorySerializer.new(memory), status: :accepted
    end

    private

    def memories_params
        params.require(:memory).permit(:title, :description, :date, :image_url, :category_id)
    end
end

