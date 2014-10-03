# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Openinfo.create([{
	title: "Information available on sign in",
	Openinformation: "Sign in gives access to my resume, detailed process information and track record data.  To ask for a login please email admin@mpwa.me and I will contact you to discuss your requirements.  If you have been issued with a login, please click login above.  The information below is some examples of in depth content.  Thanks Mark."

	}])



User.create([{
	username: "mpwa2",
	email: "info@mpwa.me",
	password_digest: "administrate"
	}])