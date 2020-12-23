class Explog < ApplicationRecord
    belongs_to :character
    
    belongs_to :grantedby, class_name: 'User'

    default_scope { order(aquiredate: :desc) }
    
    

end