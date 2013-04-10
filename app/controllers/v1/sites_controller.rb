class V1::SitesController < V1::BaseController
    # GET /sites
  # GET /sites.json
  def index
    @sites = Site.all

    render json: @sites
  end

  # GET /sites/1
  # GET /sites/1.json
  def show
    @site = Site.find(params[:id])

    render json: @site
  end

  # POST /sites
  # POST /sites.json
  def create
    @site = Site.new(params[:site])

    if @site.save
      render json: @site, status: :created, location: @site
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /sites/1
  # PATCH/PUT /sites/1.json
  def update
    @site = Site.find(params[:id])

    if @site.update_attributes(params[:site])
      head :no_content
    else
      render json: @site.errors, status: :unprocessable_entity
    end
  end

  # DELETE /sites/1
  # DELETE /sites/1.json
  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    head :no_content
  end
end
