class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
# ***** 動画の投稿は管理者画面からのみ行いたい場合は、不要です *****
  def new
    @movie = Movie.new
  end

  def create
    current_user.movies.create!(movie_params)
    redirect_to root_path
  end

  def edit
  end

  def update
  end

  def destroy
    @movie.destroy!
    redirect_to root_path
  end


  private

  def movie_params
    params.require(:movie).permit(:url)
  end

  def correct_user
    @movie = current_user.movies.find_by(id: params[:id])
    redirect_to root_path if @movie.nil?
　end
end
end
