class WrappersController < ApplicationController
  def new
    #  create a Wrappper instance
    @wrapped_str = Wrapper.new
  end

  def create
    # get params from form and pass to static method wrap
    @wrapped_str = Wrapper.wrap(params[:col_size].to_i, params[:input_str])
    # display result
    render :show
  end
end
