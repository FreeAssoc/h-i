class V1::RegionsController < V1::BaseController
    
  # GET /regions
  # GET /regions.json
  def index
    @regions = Region.all
    render json: @regions
    # render region.all.as_json(:include => "country")
  end

  # GET /regions/1
  # GET /regions/1.json
  def show
    @region = Region.includes(:country).find(params[:id])

    render json: @region
  end

  # POST /regions
  # POST /regions.json
  def create
    @region = Region.new(params[:region])

    if @region.save
      render json: @region, status: :created, location: @region
    else
      render json: @region.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /regions/1
  # PATCH/PUT /regions/1.json
  def update
    @region = Region.find(params[:id])

    if @region.update_attributes(params[:region])
      head :no_content
    else
      render json: @region.errors, status: :unprocessable_entity
    end
  end

  # DELETE /regions/1
  # DELETE /regions/1.json
  def destroy
    @region = Region.find(params[:id])
    @region.destroy

    head :no_content
  end
end

