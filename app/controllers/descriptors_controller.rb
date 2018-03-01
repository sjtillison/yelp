class DescriptorsController < ApplicationController
  def index
    @descriptors = Descriptor.all

    render("descriptors/index.html.erb")
  end

  def show
    @descriptor = Descriptor.find(params[:id])

    render("descriptors/show.html.erb")
  end

  def new
    @descriptor = Descriptor.new

    render("descriptors/new.html.erb")
  end

  def create
    @descriptor = Descriptor.new

    @descriptor.tag_id = params[:tag_id]
    @descriptor.restaurant_id = params[:restaurant_id]

    save_status = @descriptor.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/descriptors/new", "/create_descriptor"
        redirect_to("/descriptors")
      else
        redirect_back(:fallback_location => "/", :notice => "Descriptor created successfully.")
      end
    else
      render("descriptors/new.html.erb")
    end
  end

  def edit
    @descriptor = Descriptor.find(params[:id])

    render("descriptors/edit.html.erb")
  end

  def update
    @descriptor = Descriptor.find(params[:id])

    @descriptor.tag_id = params[:tag_id]
    @descriptor.restaurant_id = params[:restaurant_id]

    save_status = @descriptor.save

    if save_status == true
      referer = URI(request.referer).path

      case referer
      when "/descriptors/#{@descriptor.id}/edit", "/update_descriptor"
        redirect_to("/descriptors/#{@descriptor.id}", :notice => "Descriptor updated successfully.")
      else
        redirect_back(:fallback_location => "/", :notice => "Descriptor updated successfully.")
      end
    else
      render("descriptors/edit.html.erb")
    end
  end

  def destroy
    @descriptor = Descriptor.find(params[:id])

    @descriptor.destroy

    if URI(request.referer).path == "/descriptors/#{@descriptor.id}"
      redirect_to("/", :notice => "Descriptor deleted.")
    else
      redirect_back(:fallback_location => "/", :notice => "Descriptor deleted.")
    end
  end
end
