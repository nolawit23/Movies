class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]

 
  def index
    if params[:search]
      @movies = Movie.where('title LIKE ?', "%#{params[:search]}%")
    else
      @movies = Movie.all
    end
  end

  def show
  end

  
  def new
    @movie = Movie.new
  end


  def edit
  end

  
  def create
    @movie = Movie.new(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to movie_url(@movie), notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to movie_url(@movie), notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @movie.destroy!

    respond_to do |format|
      format.html { redirect_to movies_url, notice: "Movie was successfully deleted." }
      format.json { head :no_content }
    end
  end

  private
 
    def set_movie
      @movie = Movie.find(params[:id])
    end


    def movie_params
      params.require(:movie).permit(:title, :description, :director, :release_date)
    end
end
