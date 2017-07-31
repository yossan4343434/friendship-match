class StandbiesController < ApplicationController
  before_action :set_standby, only: [:show, :edit, :update, :destroy]

  # GET /standbies
  # GET /standbies.json
  def index
    @standbies = Standby.all
  end

  # GET /standbies/1
  # GET /standbies/1.json
  def show
  end

  # GET /standbies/new
  def new
    @standby = Standby.new
  end

  # GET /standbies/1/edit
  def edit
  end

  # POST /standbies
  # POST /standbies.json
  def create
    @standby = Standby.new(standby_params)

    respond_to do |format|
      if @standby.save
        format.html { redirect_to @standby, notice: 'Standby was successfully created.' }
        format.json { render :show, status: :created, location: @standby }
      else
        format.html { render :new }
        format.json { render json: @standby.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /standbies/1
  # PATCH/PUT /standbies/1.json
  def update
    respond_to do |format|
      if @standby.update(standby_params)
        format.html { redirect_to @standby, notice: 'Standby was successfully updated.' }
        format.json { render :show, status: :ok, location: @standby }
      else
        format.html { render :edit }
        format.json { render json: @standby.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /standbies/1
  # DELETE /standbies/1.json
  def destroy
    @standby.destroy
    respond_to do |format|
      format.html { redirect_to standbies_url, notice: 'Standby was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_standby
      @standby = Standby.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def standby_params
      params.require(:standby).permit(:user_id, :date)
    end
end
