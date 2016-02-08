class SchuelersController < ApplicationController
  before_action :set_schueler, only: [:show, :edit, :update, :destroy]

  # GET /schuelers
  # GET /schuelers.json
  def index
    @schuelers = Schueler.all
  end

  # GET /schuelers/1
  # GET /schuelers/1.json
  def show
  end

  # GET /schuelers/new
  def new
    @schueler = Schueler.new
  end

  # GET /schuelers/1/edit
  def edit
  end

  # POST /schuelers
  # POST /schuelers.json
  def create
    @schueler = Schueler.new(schueler_params)

    respond_to do |format|
      if @schueler.save
        format.html { redirect_to @schueler, notice: 'Schueler was successfully created.' }
        format.json { render :show, status: :created, location: @schueler }
      else
        format.html { render :new }
        format.json { render json: @schueler.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schuelers/1
  # PATCH/PUT /schuelers/1.json
  def update
    respond_to do |format|
      if @schueler.update(schueler_params)
        format.html { redirect_to @schueler, notice: 'Schueler was successfully updated.' }
        format.json { render :show, status: :ok, location: @schueler }
      else
        format.html { render :edit }
        format.json { render json: @schueler.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schuelers/1
  # DELETE /schuelers/1.json
  def destroy
    @schueler.destroy
    respond_to do |format|
      format.html { redirect_to schuelers_url, notice: 'Schueler was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_schueler
      @schueler = Schueler.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schueler_params
      params.require(:schueler).permit(:vorname, :nachname, :geschlecht_id, :klassenstufe, :klassenname, :schule_id, :verbleib_id)
    end
end
