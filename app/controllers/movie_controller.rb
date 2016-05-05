class MovieController<ApplicationController
  def movie_index
@list_of_movies = Movie.all

render("movie_index.html.erb")

    end
def movie_show
  @movie_id = params[:id]
 @movie_title = Movie.find(@movie_id).title
@movie_year = Movie.find(@movie_id).year
@movie_duration = Movie.find(@movie_id).duration
@movie_description = Movie.find(@movie_id).description
@movie_url = Movie.find(@movie_id).image_url

  render("movie_show.html.erb")
end

def movie_delete
    @movie_id = params[:id]
@movie_title = Movie.find(@movie_id).title
    i = Movie.find(@movie_id)
    i.destroy
    render("movie_delete.html.erb")

end

def movie_new_form

render("movie_new_form.html.erb")
  end

def movie_new_movie
@movie_title = params[:title]
@movie_year = params[:year]
@movie_duration = params[:duration]
@movie_description = params[:description]
@movie_url = params[:image_url]

x = Movie.new
x.title = @movie_title
x.year = @movie_year
x.duration = @movie_duration
x.description = @movie_description
x.image_url = @movie_url
x.save

@movie_id = Movie.find_by({:title=>@movie_title}).id


render("movie_new_movie.html.erb")

end
end
