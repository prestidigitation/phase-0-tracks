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
        make: "Suzuki",
        model: "Grand Vitara",
        year: 2005,
        seats: 5,
        miles: 150000,
        leased: false,
        occupants: {
            driver: "Tamika Daigre",
            passengers: []
        }
    },
    car_four: {
        make: "BMW",
        model: "3 Series",
        year: 2014,
        seats: 5,
        miles: 100000,
        leased: true,
        occupants: {
            driver: "Dian Beltrami",
            passengers: [
                "Hellen Redel",
                "Evonne Allgeier",
                "Ta Chadwell"
            ]
        }
    },
    car_five: {
        make: "Maserati",
        model: "GranTurismo",
        year: 2010,
        seats: 4,
        miles: 20000,
        leased: false,
        occupants: {
            driver: "Refugio Navas",
            passengers: [
                "Kathlyn Keltner",
                "Reed Lovato"
            ]
        }
    },
    car_six: {
        make: "Toyota",
        model: "RAV4 Hybrid",
        year: 2017,
        seats: 5,
        miles: 10000,
        leased: false,
        occupants: {
            driver: "Byron Nicolson",
            passengers: [
                "Apolonia Gies",
                "Truman Leighty",
                "Susie Lown",
                "Wm Prater"
            ]
        }
    }
}

p cars_on_highway[:car_one][:make]
p cars_on_highway[:car_two][:occupants][:passengers]
p cars_on_highway[:car_three][:leased]
p cars_on_highway[:car_four][:year]
p cars_on_highway[:car_five][:occupants][:driver]
p cars_on_highway[:car_six][:occupants]
