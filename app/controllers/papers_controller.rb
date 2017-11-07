class PapersController < ApplicationController
  def new
  end
  
  def create
    @author = Author.find(params[:author_id])
    @paper = @author.papers.create(paper_params)
    redirect_to author_path(@author)
  end
 
  private
    def paper_params
      params.require(:paper).permit(:title, :venue, :year)
    end
end