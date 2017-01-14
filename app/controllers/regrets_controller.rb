class RegretsController < ApplicationController
  before_action :set_regret, only: [:show, :edit, :update, :destroy]

  # GET /regrets
  # GET /regrets.json
  def index
    @regrets = Regret.all
  end

  # GET /regrets/1
  # GET /regrets/1.json
  def show
  end

  # GET /regrets/new
  def new
    @regret = Regret.new
  end

  # GET /regrets/1/edit
  def edit
  end

  # POST /regrets
  # POST /regrets.json
  def create
    @regret = Regret.new(regret_params)

    respond_to do |format|
      if @regret.save
        format.html { redirect_to @regret, notice: 'Regret was successfully created.' }
        format.json { render :show, status: :created, location: @regret }
      else
        format.html { render :new }
        format.json { render json: @regret.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regrets/1
  # PATCH/PUT /regrets/1.json
  def update
    respond_to do |format|
      if @regret.update(regret_params)
        format.html { redirect_to @regret, notice: 'Regret was successfully updated.' }
        format.json { render :show, status: :ok, location: @regret }
      else
        format.html { render :edit }
        format.json { render json: @regret.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regrets/1
  # DELETE /regrets/1.json
  def destroy
    @regret.destroy
    respond_to do |format|
      format.html { redirect_to regrets_url, notice: 'Regret was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regret
      @regret = Regret.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regret_params
      params.require(:regret).permit(:user_id, :message)
    end
end
