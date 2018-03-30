OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '833569790780-k3a949cjcl5s1givu21ua7e1lo2fb1sh.apps.googleusercontent.com', 'PIauK8lAMrZW2ucok7rdL86O', {
    client_options: {
      ssl: {
        ca_file: Rails.root.join("cacert.pem").to_s
      }
    }
  }
end
