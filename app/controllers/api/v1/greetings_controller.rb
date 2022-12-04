class Api::V1::GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    render json: @greetings
  end

  def create
    @greetings = Greeting.new(greeting_params)
    @greetings.save
    render json: @grettings, status: :created
  end

  def show
    render json: @greetings
  end
end
