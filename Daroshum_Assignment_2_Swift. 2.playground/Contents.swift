

struct Location {
    let x: Int
    let y: Int
}

func distance(from source: Location, to target: Location) -> Double {
    let distanceX = Double(source.x - target.x)
    let distanceY = Double(source.y - target.y)
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}

let store1Location = Location(x: 3, y: 3)
let store2Location = Location(x: 8, y: 8)


let storeRange = 2.5


struct Customer {
    let name: String
    let email: String
    let phoneNumber: String
    let acceptedNewsletter: Bool
    let location: Location
}

    
let Customers: [Customer] = [
        Customer(name: "Michelle Larson", email: "mlarson87@gmail.com", phoneNumber: "2893131056", acceptedNewsletter: true, location: Location(x: 1, y: 3)),
        Customer(name: "Bob Smith", email: "bob.smith@gmail.com", phoneNumber: "2896065890", acceptedNewsletter: false, location: Location(x: 4, y: 5)),
        Customer(name: "Cindy Brown", email: "cindy.brown@outlook.com", phoneNumber: "6476789012", acceptedNewsletter: true, location: Location(x: 6, y: 7)),
        Customer(name: "Rani Kumar", email: "kumarani90@gmail.com", phoneNumber: "4167890908", acceptedNewsletter: true, location: Location(x: 8, y: 9)),
        Customer(name: "David Lorenzo", email: "lorenzo.david@gmail.com", phoneNumber: "4168901234", acceptedNewsletter: false, location: Location(x: 10, y: 11)),
        Customer(name: "Frank Wilson", email: "franky12@yahoo.com", phoneNumber: "6789014545", acceptedNewsletter: true, location: Location(x: 12, y: 13)),
        Customer(name: "Jeena Miler", email: "jeenamil@outlook.com", phoneNumber: "90564876868", acceptedNewsletter: true, location: Location(x: 14, y: 15)),
        Customer(name: "Henry Taylor", email: "henry.taylor@gmail.com", phoneNumber: "6472897678", acceptedNewsletter: false, location: Location(x: 16, y: 17)),
        Customer(name: "Ivy Garcia", email: "ivy89garcia@gmail.com", phoneNumber: "9052045668", acceptedNewsletter: true, location: Location(x: 18, y: 19)),
        Customer(name: "Karina Boze", email: "bozekarina@yahoo.com", phoneNumber: "9052124832", acceptedNewsletter: true, location: Location(x: 20, y: 21))
    ]

func printCustomersWithinRange(storeLocation: Location, customers: [Customer]) {
    for customer in customers {
        let distanceToStore = distance(from: customer.location, to: storeLocation)
        if distanceToStore < storeRange {
            print("Name: \(customer.name) Email: \(customer.email)")
        }
    }
}
print("Customers within store1 range:")
printCustomersWithinRange(storeLocation: store1Location, customers: Customers)

print("Customers within store2 range:")
printCustomersWithinRange(storeLocation: store2Location, customers: Customers)

