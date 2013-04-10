class V1::QuestionTypesController < V1::BaseController

  # GET /question_types
  # GET /question_types.json
  def index
    @question_types = QuestionType.all

    render json: @question_types
  end

  # GET /question_types/1
  # GET /question_types/1.json
  def show
    @question_type = QuestionType.find(params[:id])

    render json: @question_type
  end

  # POST /question_types
  # POST /question_types.json
  def create
    @question_type = QuestionType.new(params[:question_type])

    if @question_type.save
      render json: @question_type, status: :created, location: @question_type
    else
      render json: @question_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /question_types/1
  # PATCH/PUT /question_types/1.json
  def update
    @question_type = QuestionType.find(params[:id])

    if @question_type.update_attributes(params[:question_type])
      head :no_content
    else
      render json: @question_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /question_types/1
  # DELETE /question_types/1.json
  def destroy
    @question_type = QuestionType.find(params[:id])
    @question_type.destroy

    head :no_content
  end

end
