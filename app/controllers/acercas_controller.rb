class AcercasController < ApplicationController
  # GET /acercas
  # GET /acercas.json
  def index
    @acercas = Acerca.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acercas }
    end
  end

  # GET /acercas/1
  # GET /acercas/1.json
  def show
    @acerca = Acerca.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acerca }
    end
  end

  # GET /acercas/new
  # GET /acercas/new.json
  def new
    @acerca = Acerca.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acerca }
    end
  end

  # GET /acercas/1/edit
  def edit
    @acerca = Acerca.find(params[:id])
    
  end

  # POST /acercas
  # POST /acercas.json
  def create
    @acerca = Acerca.new(params[:acerca])

    respond_to do |format|
      if @acerca.save
        format.html { redirect_to @acerca, notice: 'Acerca was successfully created.' }
        format.json { render json: @acerca, status: :created, location: @acerca }
      else
        format.html { render action: "new" }
        format.json { render json: @acerca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acercas/1
  # PUT /acercas/1.json
  def update
    @acerca = Acerca.find(params[:id])

    respond_to do |format|
      if @acerca.update_attributes(params[:acerca])
        format.html { redirect_to @acerca, notice: 'Acerca was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @acerca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acercas/1
  # DELETE /acercas/1.json
  def destroy
    @acerca = Acerca.find(params[:id])
    @acerca.destroy

    respond_to do |format|
      format.html { redirect_to acercas_url }
      format.json { head :no_content }
    end
  end
end
