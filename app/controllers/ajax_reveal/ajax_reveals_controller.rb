module AjaxReveal
  class AjaxRevealsController < ApplicationController
    # respond_to do |format|
    #   format.js  { render 'new' }
    #   format.all { render nothing: true, status: 200 } # for bots
    # end

    def show
      @reveal = "reveals/#{params[:reveal]}"

      respond_to do |format|
        format.js  { render 'show' }
        format.all { render nothing: true, status: 200 }
      end
    end

    def new
    end

    def create
    end
  end
end
