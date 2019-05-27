import Foundation

let person1 = Person(name: "Jhon", surname: "Doe", email: "jhonDoe@test.com")

print("-------------------------")
print("Name: \(person1.name)")
print("Surname: \(person1.surname)")
print("Email: \(person1.email)")

let person2 = Person(name: "Jan", surname: "Rap", email: "thisIsNotAnEmail")

print("-------------------------")
print("Name: \(person2.name)")
print("Surname: \(person2.surname)")
print("Email: \(person2.email)")
