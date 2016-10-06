class AvailabilityController < ApplicationController
  before_action  :is_admin, only: [:new]

  def new
    @appoint = Appoint.new
  end

  def index
  end
end
