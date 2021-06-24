class StripeController < ApplicationController
  require 'socket'
  skip_before_action :verify_authenticity_token
  Stripe.api_key = "sk_test_DNDN587zkJNovfMMB0yuzS1C00ksWcH5C3"
  def index
    
  end
  def createVer
    verification_session = Stripe::Identity::VerificationSession.create({
      type: 'document',
      options: {
        document: {
          require_matching_selfie: true,
        },
      }    
    })
    
    client_secret = verification_session.client_secret
    render json: {client_secret: client_secret}
    server = TCPServer.opent(2000)
    loop {
      client = server.accept
      client.puts("Verified")
      client.close
    }

  end
  def success

  end 

end
