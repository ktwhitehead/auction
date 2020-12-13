class V1::AuctionsController < ApplicationController
  def index
    json_response(auctions: Auction.all.as_json, user: @current_user)
  end
end