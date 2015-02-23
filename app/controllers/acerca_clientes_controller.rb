class AcercaClientesController < ApplicationController
  # GET /acerca_clientes
  # GET /acerca_clientes.json
  def index
    @acerca_clientes = AcercaCliente.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @acerca_clientes }
    end
  end

  # GET /acerca_clientes/1
  # GET /acerca_clientes/1.json
  def show
    @acerca_cliente = AcercaCliente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @acerca_cliente }
    end
  end

  # GET /acerca_clientes/new
  # GET /acerca_clientes/new.json
  def new
    @acerca_cliente = AcercaCliente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @acerca_cliente }
    end
  end

  # GET /acerca_clientes/1/edit
  def edit
    @acerca_cliente = AcercaCliente.find(params[:id])
  end

  # POST /acerca_clientes
  # POST /acerca_clientes.json
  def create
    @acerca_cliente = AcercaCliente.new(params[:acerca_cliente])

    respond_to do |format|
      if @acerca_cliente.save
        format.html { redirect_to @acerca_cliente, notice: 'Acerca cliente was successfully created.' }
        format.json { render json: @acerca_cliente, status: :created, location: @acerca_cliente }
      else
        format.html { render action: "new" }
        format.json { render json: @acerca_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /acerca_clientes/1
  # PUT /acerca_clientes/1.json
  def update
    @acerca_cliente = AcercaCliente.find(params[:id])

    respond_to do |format|
      if @acerca_cliente.update_attributes(params[:acerca_cliente])
        format.html { redirect_to @acerca_cliente, notice: 'Acerca cliente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @acerca_cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acerca_clientes/1
  # DELETE /acerca_clientes/1.json
  def destroy
    @acerca_cliente = AcercaCliente.find(params[:id])
    @acerca_cliente.destroy

    respond_to do |format|
      format.html { redirect_to acerca_clientes_url }
      format.json { head :no_content }
    end
  end
end
