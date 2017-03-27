class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:edit, :update, :show, :destroy]

  def index
    @portfolio_items = Portfolio.all
  end

  def show
  end

  def new
    @portfolio_item = Portfolio.new
  end

  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    if @portfolio_item.save
      redirect_to portfolios_path, notice: "New portfolio item added"
    end
  end

  def edit
  end

  def update
    if @portfolio_item.update(portfolio_params) then
      redirect_to portfolios_path, notice: "Portfolio was successfully updated!"
    else
      render :edit
    end
  end

  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_path, notice: "Blog post #{@portfolio_item.title} deleted."
  end

  private

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end

  def portfolio_params
    params.require(:portfolio).permit(
      :title,
      :subtitle,
      :body,
      technologies_attributes: [:name]
      )
  end
end
