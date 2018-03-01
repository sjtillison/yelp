class OwnershipsController < ApplicationController
  def index
    @q = Ownership.ransack(params[:q])
    @ownerships = @q.result(:distinct => true).includes(:user, :restaurant, :replies).page(params[:page]).per(10)

    render("ownerships/index.html.erb")
  end

  def show
    @reply = Reply.new
    @ownership = Ownership.find(params[:id])

    render("ownerships/show.html.erb")
  end

  def new
    @ownership = Ownership.new

    render("ownerships/new.html.erb")
  end

  def create
    @ownership = Ownership.new

    @ownership.restaurant_id = params[:restaurant_id]
    @ownership.user_id = params[:user_id]

    save_status = @ownership.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ownerships/new", "/create_ownership"
        redirect_to("/ownerships")
      else
        redirect_back(:fallback_location => "/", :notice => "Ownership created successfully.")
      end
    else
      render("ownerships/new.html.erb")
    end
  end

  def edit
    @ownership = Ownership.find(params[:id])

    render("ownerships/edit.html.erb")
  end

  def update
    @ownership = Ownership.find(params[:id])

    @ownership.restaurant_id = params[:restaurant_id]
    @ownership.user_id = params[:user_id]

    save_status = @ownership.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/ownerships/#{@ownership.id}/edit", "/update_ownership"
        redirect_to("/ownerships/#{@ownership.id}", :notice => "Ownership updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Ownership updated successfully.")
      end
    else
      render("ownerships/edit.html.erb")
    end
  end

  def destroy
    @ownership = Ownership.find(params[:id])

    @ownership.destroy

    if URI(request.referer).path == "/ownerships/#{@ownership.id}"
      redirect_to("/", :notice => "Ownership deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Ownership deleted.")
    end
  end
end
