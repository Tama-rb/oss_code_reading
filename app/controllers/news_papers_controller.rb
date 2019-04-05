class NewsPapersController < ApplicationController
  before_action :set_news_paper, only: [:show, :edit, :update, :destroy]

  # GET /news_papers
  # GET /news_papers.json
  def index
    @news_papers = NewsPaper.in_any_status
  end

  # GET /news_papers/1
  # GET /news_papers/1.json
  def show
  end

  # GET /news_papers/new
  def new
    @news_paper = NewsPaper.new
  end

  # GET /news_papers/1/edit
  def edit
  end

  # POST /news_papers
  # POST /news_papers.json
  def create
    @news_paper = NewsPaper.new(news_paper_params)

    respond_to do |format|
      if @news_paper.save
        format.html { redirect_to @news_paper, notice: 'News paper was successfully created.' }
        format.json { render :show, status: :created, location: @news_paper }
      else
        format.html { render :new }
        format.json { render json: @news_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /news_papers/1
  # PATCH/PUT /news_papers/1.json
  def update
    respond_to do |format|
      if @news_paper.update(news_paper_params)
        format.html { redirect_to @news_paper, notice: 'News paper was successfully updated.' }
        format.json { render :show, status: :ok, location: @news_paper }
      else
        format.html { render :edit }
        format.json { render json: @news_paper.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /news_papers/1
  # DELETE /news_papers/1.json
  def destroy
    @news_paper.destroy
    respond_to do |format|
      format.html { redirect_to news_papers_url, notice: 'News paper was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_news_paper
      @news_paper = NewsPaper.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def news_paper_params
      params.require(:news_paper).permit(:title, :status)
    end
end
