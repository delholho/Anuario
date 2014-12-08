User.create!(nomeCompleto:  "Delio",
             email: "a12011@bcc.unifal-mg.edu.br",
             password:              "mudar123",
             password_confirmation: "mudar123",
             login:                 "delio",
             cidade:                "alfenas",
             estado:                "minas",
             descricao:             "heroku", 
             admin: true)

99.times do |n|
  nomeCompleto  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  login = Faker::Name.name
  cidade = Faker::Name.name
  estado = Faker::Name.name
  descricao = Faker::Name.name
  User.create!(nomeCompleto:  nomeCompleto,
               email: email,
               password:              password,
               password_confirmation: password,
               login: 					login,
               cidade:          cidade,
               estado:          estado,
               descricao:       descricao)
end