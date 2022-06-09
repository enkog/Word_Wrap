class WrappersController < ApplicationController
  def new
    @wrapped_str = Wrapper.new
  end

  def create
    @wrapped_str = Wrapper.wrap(params[:col_size].to_i, params[:input_str])
    render :show
  end
end
