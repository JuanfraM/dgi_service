# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.find_or_create_by(
            ci: 46864462,
            nombre: "Ignacio",
            apellido: "Gil",
            nombre_completo: "Ignacio Gil",
            sexo: "M",
            nacionalidad: "Uruguaya",
            tel: "099366768")

user2 = User.find_or_create_by(
            ci: 42576388,
            nombre: "Juanfra",
            apellido: "Magrini",
            nombre_completo: "Juanfra Magrini",
            sexo: "M",
            nacionalidad: "Uruguaya",
            tel: "098910796")

user3 = User.find_or_create_by(
            ci: 12345678,
            nombre: "Juanito",
            apellido: "La Cruz",
            nombre_completo: "Juanito La Cruz",
            sexo: "M",
            nacionalidad: "Uruguaya",
            tel: "098910796")

userBps1 = BpsUser.find_or_create_by(
            ci: 46864462,
            nombre: "Ignacio",
            apellido: "Gil",
            sexo: "M",
            nacionalidad: "Uruguaya")

userBps2 = BpsUser.find_or_create_by(
            ci: 42576388,
            nombre: "Juanfra",
            apellido: "Magrini",
            sexo: "M",
            nacionalidad: "Uruguaya")

userBps3 = BpsUser.find_or_create_by(
            ci: 12345678,
            nombre: "Juanito",
            apellido: "La Cruz",
            sexo: "M",
            nacionalidad: "Uruguaya")

userBps1.bps_aportes.find_or_create_by(sueldo: 30000, jubilacion: 2500, fonasa: 1200)
userBps2.bps_aportes.find_or_create_by(sueldo: 42000, jubilacion: 3500, fonasa: 3200)
userBps3.bps_aportes.find_or_create_by(sueldo: 35000, jubilacion: 2800, fonasa: 1400)
