class PurchaseMailer <ActionMailer::Base     
    layout 'purchase_mailer' 
    default from: "Learn Rails & Stripe <javidp.sf@gmail.com>"  

    def purchase_receipt purchase
        @purchase = purchase 
        mail to: purchase.email, subject: "Thank you for your business!"
    end  

    
end 