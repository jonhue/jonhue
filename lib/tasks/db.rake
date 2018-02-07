namespace :db do

    task reseed: [
        'environment',
        'db:seed'
    ]

end
