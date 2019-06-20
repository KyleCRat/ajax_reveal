Rails.application.routes.draw do
  get '/remote_modals/:remote_modal',
      to: 'remote_modal/remote_modals#show',
      as: :remote_modal_show
end
