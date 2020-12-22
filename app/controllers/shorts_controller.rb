class ShortsController < ApplicationController
  before_action :set_short, only: [:show, :edit, :update, :destroy]
  before_action :set_url, only: [:red]

  # GET /shorts
  # GET /shorts.json
  def index
    @shorts = Short.all
  end

  def red
   redirect_to @short.long_url
  end

  # GET /shorts/1
  # GET /shorts/1.json
  def show
  end

  # GET /shorts/new
  def new
    @short = Short.new
  end

  # GET /shorts/1/edit
  def edit
  end

  # POST /shorts
  # POST /shorts.json
  def create
    @short = Short.new(short_params)

    @short.long_url = URI.encode(@short.long_url)

    respond_to do |format|
      if @short.save
        format.html { redirect_to @short, notice: 'Short was successfully created.' }
	@msg = "Here is your short URL #{request.host_with_port}/#{@short.short_url}" 
	format.json { render :show, status: :created }
	format.js { render 'shorts/short_url', val: @short}
      else
        format.html { render :new }
        format.json { render json: @short.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shorts/1
  # PATCH/PUT /shorts/1.json
  def update
    respond_to do |format|
      if @short.update(short_params)
        format.html { redirect_to @short, notice: 'Short was successfully updated.' }
        format.json { render :show, status: :ok, location: @short }
      else
        format.html { render :edit }
        format.json { render json: @short.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shorts/1
  # DELETE /shorts/1.json
  def destroy
    @short.destroy
    respond_to do |format|
      format.html { redirect_to shorts_url, notice: 'Short was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_short
      @short = Short.find(params[:id])
    end

    def set_url
      @short = Short.find_by_short_url(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def short_params
      params.require(:short).permit(:long_url, :short_url)
    end
end
