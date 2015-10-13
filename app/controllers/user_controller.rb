class UserController < ApplicationController
require 'json'
  def index
    # Sets the client that allows interfacing with Tumblr
    @client = Tumblr::Client.new({
      :consumer_key => '76p8HvtPxSMBDbPleLeCBF176HoocXlWIWv0HtEvSWD6qcKwRz',
      :consumer_secret => 'pysifJfcw3VpIP46cNTQNUC3DsEH9ohNDXaiYhFUDCDUVRHom3',
      :oauth_token => 'FI6lYUlo9IahuFcQLYBBKkHB9iAJXvMDI3S7X8GBKu8cgEO5NV',
      :oauth_token_secret => 'ht9sUCr32iFnEAWvIxzIw86r5URJKErITAhGVbKL4mlKOzGWKi'
    })
    @posts = @client.posts('mckshreder.tumblr.com', :type => "photo", :limit => 10)
    @photos = @posts["posts"]
    # @photos = @posts["posts"][0]["photos"][0]["alt_sizes"][0]["url"]
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
