class V1::WalkthroughsController < V1::BaseController
   # GET /walkthroughs
  # GET /walkthroughs.json
  def index
    @walkthroughs = Walkthrough.all

    render json: @walkthroughs
  end

  # GET /walkthroughs/1
  # GET /walkthroughs/1.json
  def show
    @walkthrough = Walkthrough.find(params[:id])

    render json: @walkthrough
  end

  # POST /walkthroughs
  # POST /walkthroughs.json
  def create
    @walkthrough = Walkthrough.new(params[:walkthrough])

    if @walkthrough.save
      render json: @walkthrough, status: :created, location: @walkthrough
    else
      render json: @walkthrough.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /walkthroughs/1
  # PATCH/PUT /walkthroughs/1.json
  def update
    @walkthrough = Walkthrough.find(params[:id])

    if @walkthrough.update_attributes(params[:walkthrough])
      head :no_content
    else
      render json: @walkthrough.errors, status: :unprocessable_entity
    end
  end

  # DELETE /walkthroughs/1
  # DELETE /walkthroughs/1.json
  def destroy
    @walkthrough = Walkthrough.find(params[:id])
    @walkthrough.destroy

    head :no_content
  end
end
