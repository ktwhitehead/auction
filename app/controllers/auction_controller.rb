class AuctionController < ApplicationController
  def list
    Acution.all
  end
end