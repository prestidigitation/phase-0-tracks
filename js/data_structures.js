var colorArray = [
    "blue",
    "green",
    "red",
    "gold"
];

var horseNameArray = [
    "Ed",
    "Secretariat",
    "Sausage",
    "Glue"
];

colorArray.push("cerulean");
console.log(colorArray);
horseNameArray.push("Snow");
console.log(horseNameArray);

var horses = {};
for (i = 0; i < colorArray.length; i++) {
    horses[horseNameArray[i]] = colorArray[i];
}

console.log(horses);
