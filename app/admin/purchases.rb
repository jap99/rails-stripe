ActiveAdmin.register Purchase do
    
    # convert purchase_id from integer to string
    before_action do 
        Purchase.class_eval do
            def to_param 
                id.to_s
            end
        end 
    end 
    

end
