class Api::V1::CaregiversController < ApplicationController

    def create
        caregiver = Caregiver.new(caregiver_params)
        if caregiver.valid?
            caregiver.save
            render json: CaregiverSerializer.new(caregiver), status: :accepted
        else
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
    end

    def show

    end

    def update
        caregiver = Caregiver.find(params [:id])
        if caregiver.update(caregiver_params)
            render json: CaregiverSerializer.new(caregiver), status: :accepted
        else 
            render json: {errors: syllabus.errors.full_messages}, status: :unprocessible_entity
    end

    private

    def caregiver_params
        params.require(:caregiver).permit(:caregiver_name, :employee_number, :company_name, :caregiver_email)
    end
end
