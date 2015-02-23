class UbicacionDetailsController < ApplicationController
  # GET /ubicacion_details
  # GET /ubicacion_details.json
  def index
    @ubicacion_details = UbicacionDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ubicacion_details }
    end
  end

  # GET /ubicacion_details/1
  # GET /ubicacion_details/1.json
  def show
    @ubicacion_detail = UbicacionDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ubicacion_detail }
    end
  end

  # GET /ubicacion_details/new
  # GET /ubicacion_details/new.json
  def new
    @ubicacion_detail = UbicacionDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ubicacion_detail }
    end
  end

  # GET /ubicacion_details/1/edit
  def edit
    @ubicacion_detail = UbicacionDetail.find(params[:id])
  end

  # POST /ubicacion_details
  # POST /ubicacion_details.json
  def create
    @ubicacion_detail = UbicacionDetail.new(params[:ubicacion_detail])

    respond_to do |format|
      if @ubicacion_detail.save
        format.html { redirect_to @ubicacion_detail, notice: 'Ubicacion detail was successfully created.' }
        format.json { render json: @ubicacion_detail, status: :created, location: @ubicacion_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @ubicacion_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ubicacion_details/1
  # PUT /ubicacion_details/1.json
  def update
    @ubicacion_detail = UbicacionDetail.find(params[:id])

    respond_to do |format|
      if @ubicacion_detail.update_attributes(params[:ubicacion_detail])
        format.html { redirect_to @ubicacion_detail, notice: 'Ubicacion detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ubicacion_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ubicacion_details/1
  # DELETE /ubicacion_details/1.json
  def destroy
    @ubicacion_detail = UbicacionDetail.find(params[:id])
    @ubicacion_detail.destroy

    respond_to do |format|
      format.html { redirect_to ubicacion_details_url }
      format.json { head :no_content }
    end
  end
end
