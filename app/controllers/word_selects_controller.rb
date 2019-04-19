class WordSelectsController < ApplicationController
  before_action :set_word_select, only: [:show, :edit, :update, :destroy]

  # GET /word_selects
  # GET /word_selects.json
  def index
    @word_select_last = WordSelect.last
  end

  # GET /word_selects/1
  # GET /word_selects/1.json
  def show
  end

  # GET /word_selects/new
  def new
    @word_select = WordSelect.new
  end

  # GET /word_selects/1/edit
  def edit
  end

  # POST /word_selects
  # POST /word_selects.json
  def create
    @word_select = WordSelect.new(word_select_params)

    respond_to do |format|
      if @word_select.save
        format.html { redirect_to "/index", notice: 'Word select was successfully created.' }
        format.json { render :show, status: :created, location: @word_select }
      else
        format.html { render :new }
        format.json { render json: @word_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /word_selects/1
  # PATCH/PUT /word_selects/1.json
  def update
    respond_to do |format|
      if @word_select.update(word_select_params)
        format.html { redirect_to @word_select, notice: 'Word select was successfully updated.' }
        format.json { render :show, status: :ok, location: @word_select }
      else
        format.html { render :edit }
        format.json { render json: @word_select.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /word_selects/1
  # DELETE /word_selects/1.json
  def destroy
    @word_select.destroy
    respond_to do |format|
      format.html { redirect_to word_selects_url, notice: 'Word select was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_select
      @word_select = WordSelect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def word_select_params
      params.require(:word_select).permit(:noun1, :noun2, :noun3, :place1, :place2, :verb1, :verb2, :verb3, :string, :adjective1, :adjective2, :adjective3)
    end
end
