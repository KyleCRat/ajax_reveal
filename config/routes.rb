Rails.application.routes.draw do
  get '/reveals/:reveal',
      to: 'ajax_reveal/ajax_reveals#show',
      as: :reveal_show
end
