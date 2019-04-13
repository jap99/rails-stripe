class PurchasesController < ApplicationController

# see specific purchases
def show 
    @purchase = Purchase.find(params[:id])
    # @purchase is a variable that will be accessible in the view; 
    # it finds the Purchase object in the DB based on its ID
end

end