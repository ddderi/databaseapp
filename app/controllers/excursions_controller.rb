class ExcursionsController < ApplicationController
    def index
        @excursions = Excursion.all
    end
    
    def new
        @excursion = Excursion.new
    end

    def create
        @excursion = Excursion.new(
            article_id: params[:excursion][:article_id],
            student_id: params[:excursion][:student_id],
            excursion_date: params[:excursion][:excursion_date]
            )
        @excursion.save
        
    end

    def show
        @excursion = Excursion.find(params[:id])
    end


end
