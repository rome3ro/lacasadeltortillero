class UltimaInstalacionsController < ApplicationController
  # GET /ultima_instalacions
  # GET /ultima_instalacions.json
  def index
    @ultima_instalacions = UltimaInstalacion.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ultima_instalacions }
    end
  end

  # GET /ultima_instalacions/1
  # GET /ultima_instalacions/1.json
  def show
    @ultima_instalacion = UltimaInstalacion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ultima_instalacion }
    end
  end

  # GET /ultima_instalacions/new
  # GET /ultima_instalacions/new.json
  def new
    @ultima_instalacion = UltimaInstalacion.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ultima_instalacion }
    end
  end

  # GET /ultima_instalacions/1/edit
  def edit
    @ultima_instalacion = UltimaInstalacion.find(params[:id])
  end

  # POST /ultima_instalacions
  # POST /ultima_instalacions.json
  def create
    @ultima_instalacion = UltimaInstalacion.new(params[:ultima_instalacion])

    respond_to do |format|
      if @ultima_instalacion.save
        format.html { redirect_to @ultima_instalacion, notice: 'Ultima instalacion was successfully created.' }
        format.json { render json: @ultima_instalacion, status: :created, location: @ultima_instalacion }
      else
        format.html { render action: "new" }
        format.json { render json: @ultima_instalacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ultima_instalacions/1
  # PUT /ultima_instalacions/1.json
  def update
    @ultima_instalacion = UltimaInstalacion.find(params[:id])

    respond_to do |format|
      if @ultima_instalacion.update_attributes(params[:ultima_instalacion])
        format.html { redirect_to @ultima_instalacion, notice: 'Ultima instalacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ultima_instalacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultima_instalacions/1
  # DELETE /ultima_instalacions/1.json
  def destroy
    @ultima_instalacion = UltimaInstalacion.find(params[:id])
    @ultima_instalacion.destroy

    respond_to do |format|
      format.html { redirect_to ultima_instalacions_url }
      format.json { head :no_content }
    end
  end
end
