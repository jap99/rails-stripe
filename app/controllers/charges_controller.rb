class ChargesController < ApplicationController

    def create 
      
        # customer is created
        customer = Stripe::Customer.create({
          email: params[:stripeEmail],
          source: params[:stripeToken],
        })
      
        # customer is charged
        charge = Stripe::Charge.create({
          customer: customer.id,
          amount: params[:amount],
          description: 'Rails Stripe customer',
          currency: 'usd',
        })
      
    # when the customer is redirected, display what they purchased
        purchase = Purchase.create(email: params[:stripeEmail], card: params[:stripeToken], 
            amount: params[:amount], description: charge.description, currency: charge.currency, 
            customer_id: customer.id, product_id: 1)

            redirect_to purchase 

      rescue Stripe::CardError => e
        flash[:error] = e.message
        redirect_to new_charge_path
      end


end 