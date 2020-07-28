class Api::V1::VisitsController < ApplicationController
    def index
        visits = Visit.all 
        render json: VisitSerializer.new(visits)
    end

    def create
        visit = Visit.create(visit_params)
        if visit.valid?
            visit.save
            render json: VisitSerializer.new(visit)
        else
            render json: {errors: visit.errors.full_messages}, status: :accepted
        end
    end

    def show 
        if visit = Visit.find(params[:id])
            render json: VisitSerializer.new(visit)
        else 
            render json: {errors: visit.full_messages}, status: :accepted
        end 
    end

    def update
        if visit = Visit.find(params[:id])
            visit.update(visit_params)
            render json: VisitSerializer.new(visit)
        else 
            render json: {errors: visit.full_messages}, status: :accepted
        end
    end

end
