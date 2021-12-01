class Api::V1::ContactosController < ApplicationController
  before_action :set_contacto, only: [:show, :update, :destroy]
  before_action :set_models, only: [:index, :show]

  # GET /contactos
  def index
    @contactos = Contacto.all

    render json: @contactos
  end

  # GET /contactos/1
  def show
    render json: @contacto
  end

  # POST /contactos
  def create
    @contacto = Contacto.new(contacto_params)

    if @contacto.save
      render json: @contacto, status: :created
    else
      render json: @contacto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contactos/1
  def update
    if @contacto.update(contacto_params)
      render json: @contacto
    else
      render json: @contacto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contactos/1
  def destroy
    @contacto.destroy
  end

  private
  def set_models
    @models = [:usuario]
  end
    # Use callbacks to share common setup or constraints between actions.
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def contacto_params
      params.require(:contacto).permit(:nombre, :email, :pregunta)
    end
end
