class ContactInfosController < ApplicationController
  # GET /contact_infos
  # GET /contact_infos.json
  def index
    @contact_infos = ContactInfo.all

    render json: @contact_infos
  end

  # GET /contact_infos/1
  # GET /contact_infos/1.json
  def show
    @contact_info = ContactInfo.find(params[:id])

    render json: @contact_info
  end

  # POST /contact_infos
  # POST /contact_infos.json
  def create
    @contact_info = ContactInfo.new(params[:contact_info])

    if @contact_info.save
      render json: @contact_info, status: :created, location: @contact_info
    else
      render json: @contact_info.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contact_infos/1
  # PATCH/PUT /contact_infos/1.json
  def update
    @contact_info = ContactInfo.find(params[:id])

    if @contact_info.update_attributes(params[:contact_info])
      head :no_content
    else
      render json: @contact_info.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contact_infos/1
  # DELETE /contact_infos/1.json
  def destroy
    @contact_info = ContactInfo.find(params[:id])
    @contact_info.destroy

    head :no_content
  end
end
