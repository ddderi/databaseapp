class ArticlesController < ApplicationController
    def index
        @articles = Article.all
    end

    def show
        @article = Article.find(params[:id])
    end

    def new
        @article = Article.new
        @excursion = Excursion.new
    end

    def create
        
        @article = Article.new(article_params)
        @article.save
        # @excursion = Excursion.new(article_id: @article.id, excursion_date: params[:article][:article_date])
        # @excursion.save
        redirect_to article_path(@article)
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])
        @article.update(article_params)
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to '/articles/new', :notice => "Your article has been deleted"
    end
    def displayart
        @display = Article.where("teacher_id = ?", @teacher.id)
    end

private 
    def article_params
        params.require(:article).permit(:name, :description, :teacher_id)
    end
end
