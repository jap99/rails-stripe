class Purchase < ApplicationRecord 
    after_create :email_purchaser 
    # send user an email after a purchase is created (ie - after they make a purchase) calls email_purchaser method
    # self passes in an instance of the purchase, then the email is delivered
    def email_purchaser
        PurchaseMailer.purchase_receipt(self).deliver
    end


    #returns a uuid
    def to_param 
        uuid 
    end 







end
