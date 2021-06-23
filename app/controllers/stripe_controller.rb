class StripeController < ApplicationController

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
  end

end
