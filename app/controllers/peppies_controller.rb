class PeppiesController < ApplicationController
  def index
    @peppies = Peppy.all
  end

  def create
    Peppy.create title: params[:title], content: params[:content]
    redirect_to "/"
  end

  def show
    @peppy = Peppy.find(params[:id])
  end

  def update
    @peppy = Peppy.find(params[:id])

    @peppy.title = params[:title]
    @peppy.content = params[:content]

    @peppy.save

    redirect_back(fallback_location:"/")

  end

  def destroy
    @peppy = Peppy.find(params[:id])
    @peppy.destroy
    redirect_to "/"
  end
end
