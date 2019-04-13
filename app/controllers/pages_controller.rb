class PagesController < ApplicationController 
    def home 
        # use @product to display product info
        @product = Product.find_by_sku("kittyOne")
    end 
end 