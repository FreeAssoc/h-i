class V1::CountriesController < V1::BaseController
    
  # GET /countries
  # GET /countries.json
  def index
    @countries = Country.all
    render json: @countries
    # render Country.all.as_json(:include => "country")
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
    @hotel = Country.find(params[:id])

    render json: @hotel
  end

  # POST /countries
  # POST /countries.json
  def create
    @hotel = Country.new(params[:hotel])

    if @hotel.save
      render json: @hotel, status: :created, location: @hotel
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    @hotel = Country.find(params[:id])

    if @hotel.update_attributes(params[:hotel])
      head :no_content
    else
      render json: @hotel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @hotel = Country.find(params[:id])
    @hotel.destroy

    head :no_content
  end
end

