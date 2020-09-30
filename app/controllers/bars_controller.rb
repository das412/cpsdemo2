class BarsController < ApplicationController
  before_action :set_bar, only: %i(show update destroy)

  def index
    @bars = Bar.all
    # render json: @bars
  end

  def show
    # render json: @bar
  end

  def create
    @bar = Bar.new(bar_params)

    if @bar.save
      render json: @bar, status: :created, location: @bar
    else
      render json: @bar.errors, status: :unprocessable_entity
    end
  end

  def update
    if @bar.update(bar_params)
      render json: @bar, status: :ok, location: @bar
    else
      render json: @bar.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @bar.destroy
  end

  private
    def set_bar
      @bar = Bar.find(params[:id])
    end

    def bar_params
      params.require(:bar).permit(:name)
    end
end
