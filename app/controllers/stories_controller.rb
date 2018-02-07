class StoriesController < ApplicationController

  def show
    @story = Story.find(params[:id])
    @story_entries = @story.story_entries

  end

  def api_create
    story = Story.new
    story.title = params[:title]
    story.image_url = params[:image_url]
    story.story_img = params[:img_file]
    if story.save 
      render json: story
    else
      render json: {error: "erroris here"}
    end
  end



end
