class PurchaseMailer <ActionMailer::Base    # the PurchaseMailer needs a view (we called is purchase_mailer)
    layout 'purchase_mailer' 
    default from: "Learn Rails & Stripe <javidp.sf@gmail.com>"  

    def purchase_receipt purchase
        @purchase = purchase 
        mail to: purchase.email, subject: "Thank you for your business!"
    end 


        # @purchase variable will be accessed from a template 
        # set it to mail to purchase.email & set subject


end 