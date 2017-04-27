cars_on_highway = {
    car_one: {
        make: "BMW Alpina",
        model: "B6 Gran Coupe",
        year: 2016,
        seats: 5,
        miles: 30000,
        leased: true,

        occupants: {
            driver: "Lynwood Pyle",
            passengers: [
                "Matilda Hoop",
                "Keli Doetsch",
                "Terrance Stryker",
                "Samuel Jumper"
            ]
        }
    },
    car_two: {
        make: "Ford Mustang",
        model: "Shelby GT500",
        year: 2011,
        seats: 4,
        miles: 100000,
        leased: false,
        occupants: {
            driver: "Estell Kersey",
            passengers: [
                "Golda Boatman"
            ]
        }
    },
    car_three: {

    },
    car_four: {

    },
    car_five: {

    },
    car_six: {

    }
}

p cars_on_highway[:car_one][:make]
p cars_on_highway[:car_two][:occupants][:passengers]
