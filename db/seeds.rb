User.create!(nomeCompleto:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             login:                 "example",
             admin: true)

99.times do |n|
  nomeCompleto  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  login = Faker::Name.name
  User.create!(nomeCompleto:  nomeCompleto,
               email: email,
               password:              password,
               password_confirmation: password,
               login: 					login)
end