class MembersController < ApplicationController

  # GET /members
  def index
    @combined = Subscription.joins(:members).select("Subscriptions.name AS subscription, *")

    render json: @combined
  end

end