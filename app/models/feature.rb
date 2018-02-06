class Feature < ApplicationRecord

    acts_as_belongable

    belongable :apps, 'App'
    belongable :repositories, 'Repository'

end
