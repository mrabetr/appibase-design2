Rails.application.routes.draw do
  devise_for :users,
    defaults: { format: :json },
    path: 'auth',
    path_names: {
      sign_in: 'login',
      sign_out: 'logout',
      registration: 'account'
    },
    controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations'
    }
end
