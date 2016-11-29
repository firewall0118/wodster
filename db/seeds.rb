# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# center1 = Center.create(name: 'CrossFit Fairmount', lat: 101.223, lon: 101.33, address: 'Philadelphia')


# center1 = Center.create(name: 'CrossFit Fairmount', lat: 101.223, lon: 101.33, address: 'Philadelphia')
user1 = User.new(
    :provider               => 'email',
    :uid                    => 'test@app.com',
    :email                  => 'test@app.com',
    :password               => 'testtest',
    :password_confirmation  => 'testtest',
    :name                   => 'John Dae',
    :address				=> 'chicago, il'
)
# user1.skip_confirmation!
user1.save!

category1 = Category.create(name: 'Sport')
category2 = Category.create(name: 'Fitness')
center1 = category1.centers.create(name: 'CrossFit Fairmount')
center2 = category2.centers.create(name: 'Phily Dally Fitness')
wod1 = center1.wods .create(name: 'Football', location: 'Washington', description: 'football, description', wod_datetime: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"), capacity: 15)
wod2 = center2.wods.create(name: 'CrossFit', location: 'Philadelphia, PA', description: 'CrossFit, description', wod_datetime: DateTime.strptime("09/01/2009 17:00", "%m/%d/%Y %H:%M"), capacity: 15)
coach1 = center1.coaches.create(name: 'William Cart', duty: 'CrossFit Trainer')
coach2 = center2.coaches.create(name: 'Peter Vries', duty: 'CrossFit Bootcamp')
certification1 = coach1.certifications.create(name: "Certified CrossFit Level4 Coach 2009")
certification2 = coach2.certifications.create(name: "Certified CrossFit Level4 Coach 2009")
