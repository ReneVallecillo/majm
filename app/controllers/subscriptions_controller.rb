class SubscriptionsController < ApplicationController
  def create
    @subscription = Subscription.new(subscription_params)

    if @subscription.save
      redirect_to root_path, flash: { success: 'Te estaremos Enviando las novedades!' }
    else
      redirect_to root_path, warning: 'Por Favor digita una dirección válida'
    end
  end

  private
    def subscription_params
      params.require(:subscription).permit(:email)
    end
end
