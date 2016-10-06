class AvailabilityController < ApplicationController
  before_action :set_appoint, only: [:show, :edit, :update, :destroy]

  def new
    @appoint = Appoint.new
  end

  def index
  end
end
