class UrlsController < ApplicationController
  def index
		@urls = Url.all
	end

	def show
	    @url = Url.find(params[:id])
	end

	def new
	    @url = Url.new
	end

  def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to @url
    else
      render 'new'
    end
  end

  def redirect_to_long_url
    @url = Url.find_by(urlShort: params[:url_short])
    redirect_to @url.urlLong
  end

	private

	def url_params
	    params.require(:url).permit(:urlLong, :urlShort)
	end
end
