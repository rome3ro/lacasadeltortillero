class ProductoDetailsController < ApplicationController
  # GET /producto_details
  # GET /producto_details.json
  def index
    @producto_details = ProductoDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @producto_details }
    end
  end

  # GET /producto_details/1
  # GET /producto_details/1.json
  def show
    @producto_detail = ProductoDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @producto_detail }
    end
  end

  # GET /producto_details/new
  # GET /producto_details/new.json
  def new
    @producto_detail = ProductoDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @producto_detail }
    end
  end

  # GET /producto_details/1/edit
  def edit
    @producto_detail = ProductoDetail.find(params[:id])
  end

  # POST /producto_details
  # POST /producto_details.json
  def create
    @producto_detail = ProductoDetail.new(params[:producto_detail])

    respond_to do |format|
      if @producto_detail.save
        format.html { redirect_to @producto_detail, notice: 'Producto detail was successfully created.' }
        format.json { render json: @producto_detail, status: :created, location: @producto_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @producto_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /producto_details/1
  # PUT /producto_details/1.json
  def update
    @producto_detail = ProductoDetail.find(params[:id])

    respond_to do |format|
      if @producto_detail.update_attributes(params[:producto_detail])
        format.html { redirect_to @producto_detail, notice: 'Producto detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @producto_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producto_details/1
  # DELETE /producto_details/1.json
  def destroy
    @producto_detail = ProductoDetail.find(params[:id])
    @producto_detail.destroy

    respond_to do |format|
      format.html { redirect_to producto_details_url }
      format.json { head :no_content }
    end
  end
end
