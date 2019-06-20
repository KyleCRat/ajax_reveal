module RemoteModal
  class RemoteModalsController < ApplicationController
    before_action :append_view_paths

    def show
      @remote_modal = CGI.unescape(params[:remote_modal])
      p @remote_modal
      respond_to do |format|
        format.js  { render 'show' }
        format.all { render nothing: true, status: 200 }
      end
    end

    private

    def append_view_paths
      @default_path = RemoteModal.configuration.default_path
      return unless @default_path

      append_view_path Rails.root.join('app', 'views', @default_path)
    end
  end
end
