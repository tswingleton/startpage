class CampaignsToDosController < ApplicationController
  before_action :set_campaigns_to_do, only: [:show, :edit, :update, :destroy]

  # GET /campaigns_to_dos
  # GET /campaigns_to_dos.json
  def index
    @campaigns_to_dos = CampaignsToDo.all
  end

  # GET /campaigns_to_dos/1
  # GET /campaigns_to_dos/1.json
  def show
  end

  # GET /campaigns_to_dos/new
  def new
    @campaigns_to_do = CampaignsToDo.new
  end

  # GET /campaigns_to_dos/1/edit
  def edit
  end

  # POST /campaigns_to_dos
  # POST /campaigns_to_dos.json
  def create
    @campaigns_to_do = CampaignsToDo.new(campaigns_to_do_params)

    respond_to do |format|
      if @campaigns_to_do.save
        format.html { redirect_to @campaigns_to_do, notice: 'Campaigns to do was successfully created.' }
        format.json { render :show, status: :created, location: @campaigns_to_do }
      else
        format.html { render :new }
        format.json { render json: @campaigns_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaigns_to_dos/1
  # PATCH/PUT /campaigns_to_dos/1.json
  def update
    respond_to do |format|
      if @campaigns_to_do.update(campaigns_to_do_params)
        format.html { redirect_to @campaigns_to_do, notice: 'Campaigns to do was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaigns_to_do }
      else
        format.html { render :edit }
        format.json { render json: @campaigns_to_do.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaigns_to_dos/1
  # DELETE /campaigns_to_dos/1.json
  def destroy
    @campaigns_to_do.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_to_dos_url, notice: 'Campaigns to do was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaigns_to_do
      @campaigns_to_do = CampaignsToDo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaigns_to_do_params
      params.require(:campaigns_to_do).permit(:Name, :Notes, :Marketo, :Salesforce, :DueDate)
    end
end
