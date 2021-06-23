class WebhookEventsController < ApplicationController
  Stripe.api_key = "sk_test_DNDN587zkJNovfMMB0yuzS1C00ksWcH5C3"
  skip_before_action  :verify_authenticity_token
  def create 
    case params[:source]
    when 'stripe'
      case params[:type]
      when 'identity.verification_session.verified'
        byebug
      end
      when 'identity.verification_session.requires_input'
        byebug
      end
    end
  
  end


end 