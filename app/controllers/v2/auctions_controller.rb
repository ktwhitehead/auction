class V2::AuctionsController < ApplicationController
  def index
    json_response(auctions: { name: "lol" })
  end
end