class TeachersController < ApplicationController
    def index
        @teachers = Teacher.all
    end

    def show
        @teacher = Teacher.find(params[:id])
    end

    def new
        @teacher = Teacher.new
    end


    def create
        @teacher = Teacher.new(teacher_params)
        @teacher.save
        redirect_to teacher_path(@teacher)
    end

    def edit
        @teacher = Teacher.find(params[:id])
    end

    def update
        @teacher = Teacher.find(params[:id])
        @teacher.update(teacher_params)
        redirect_to teacher_path(@teacher)
    end

    def displayart
        @display = Article.where("teacher_id = ?", @teacher.id)
    end

private 
    def teacher_params
        params.require(:teacher).permit!
    end
end
