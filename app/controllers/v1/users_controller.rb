class V1::UsersController < V1::BaseController
  # GET /users
  # GET /users.json
  def index
    if params[:notify_when_site_is_live]
      notify_status = params[:notify_when_site_is_live].match(/(true|t|yes|y|1)$/i) != nil
      @users = User.where(notify_when_site_is_live: notify_status)
    elsif params[:validated]
      validation_status = params[:validated].match(/(true|t|yes|y|1)$/i) != nil
      @users = User.where(validated: validation_status)
    elsif params[:newsletter_subscriber]
      newsletter_status = params[:newsletter_subscriber].match(/(true|t|yes|y|1)$/i) != nil
      @users = User.where(newsletter_subscriber: newsletter_status)
    else
      @users = User.all
    end
    render json: @users
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    render json: @user
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.where(email: params[:id])

    if @user.update_attributes(params[:user])
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    head :no_content
  end

  # Notify all users who requested notification that the site is live
  def golive_notify
    if params[:app_name]
      app_name = params[:app_name]
    else
      app_name = "Hotel Insider"
    end

    if params[:site_name]
      site_name = params[:site_name]
    else
      site_name = "Hotel Insider"
    end

    if params[:site_url]
      site_url = params[:site_url]
    else
      site_url = "http://hotelinsider.com"
    end

    users = User.where(notify_when_site_is_live: true)
    UserMailer.send_golive_message(users, app_name, site_name, site_url).deliver
    render json: { status => "Notification sent." }

  end

end
