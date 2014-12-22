class KnowledgesController < ApplicationController
  def new
    @knowledge = Knowledge.new
  end

  def index
    @knowledges = Knowledge.search(params[:search])
  end

  def create
    @knowledge = Knowledge.new(knowledge_params)
    @knowledge.save
    redirect_to knowledges_path
  end

  private
    def knowledge_params
      params.require(:knowledge).permit(:title, :body)
    end
end
