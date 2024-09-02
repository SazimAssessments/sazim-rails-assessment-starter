class StatusCheckController < ApplicationController
  def index
    render json: { status: :ok, timestamp: Time.current }, status: :ok
  end
end
