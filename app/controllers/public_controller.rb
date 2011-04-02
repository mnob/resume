class PublicController < ApplicationController
  def index
    @matte = Matte.first
  end
end
