var colors = ["sparkles", "glitter", "green", "bronze"];

var names = ["Ed", "Marshall", "Princess Fancypants", "Whisper in the Wind"];

colors.push("Rose");
names.push("Jasper");

console.log(colors);
console.log(names);

horseObject = {};

for (var i = 0; i < colors.length; i++) {
 horseObject[names[i]] = colors[i];
}

console.log(horseObject);

//------------------------------------------------------------

function Car(model, year, isRegistered) {
 this.model = model;
 this.year = year;
 this.isRegistered = isRegistered;
 this.revsEngine = function() {console.log("Vroooom!");
 };

 console.log("CAR BUILD COMPLETE");
}

console.log("Let's build a car...");
var newCar = new Car("Toyota", 2012, true);
console.log(newCar);
console.log("Let's fire it up!");
newCar.revsEngine();

console.log("Let's build second car...");
var secondCar = new Car("Mazda", 2015, false);
console.log(secondCar);
console.log("Let's fire it up!");
secondCar.revsEngine();