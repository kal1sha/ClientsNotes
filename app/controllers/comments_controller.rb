class CommentsController < ApplicationController
  def create
    @people = People.find(params[:person_id])
    @comment = @people.comments.create(params[:comment])
    redirect_to people_path(@people)
  end
end
