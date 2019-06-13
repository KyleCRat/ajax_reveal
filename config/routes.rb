Rails.application.routes.draw do
  get '/reveals/:reveal',
      to: 'ajax_reveal/ajax_reveals#show',
      as: :ajax_reveal_show
end
