class Belonging < ApplicationRecord

    acts_as_list :belonger, add_new_at: :bottom

    belongs_to :belonger, polymorphic: true
    belongs_to :belongable, polymorphic: true

end
