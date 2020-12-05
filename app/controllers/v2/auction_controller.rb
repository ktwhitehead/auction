class V2::AuctionController < ApplicationController
  def list
    json_response(auctions: Auction.all.as_json)
  end
end