
////////// RELEASE 0 ///////////

function longestWord(array){
  var winner = array[0];
  // loop through each element of array
  for (var i = 1; i < array.length; i++){
  // find each length, compare it to the element before
    // if that element is longer, return it
  // if element before is longer, return it
    if (array[i].length > winner.length){
      var winner = array[i]
    };
  };
  return winner;
}

// var ary1 = ["cat", "horse", "elephant"];
// var ary2 = ["this is long", "this is longer", "this is longest", "or maybe this is longest"];

// console.log("The longest element of")
// console.log(ary1)
// console.log("is:")
// console.log((longestWord(ary1)))

// console.log("The longest element of ary2 is:")
// console.log((longestWord(ary2)))



////////// RELEASES 1 & 2 ///////////

function doTheyShare(object1,object2){
//(Object.keys(arr)) returns array of keys...
  for (var prop in object1){
    if (object2[prop]){
      if (object1[prop] == object2[prop]){
        console.log(prop + " values match!");
        return true;
      };
    }
    else{
      console.log(prop + " doesn't match.");
    }
  };
  return false
};

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length.
function wordArray(n){
  var words = [];
  while (n > 0){
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    var randomWord = "";
    var wordLength = Math.floor(Math.random() * 11) + 1;
    for (var i = 0; i < wordLength; i++){
      randomWord += alphabet.charAt(Math.floor(Math.random() * alphabet.length));
    };
    words.push(randomWord);
    n--;
  };
  return words
};


// So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)


/////////////// DRIVER CODE ///////////////

// RELEASE 1
var person1 = {name: "Cate", age: 29, city: "Atlanta"}
var person2 = {name: "Maria", age: 29, city: "Miami"}
var person3 = {name: "Erica", age: 15, city: "Miami"}

console.log("Do person1 and person2 share any traits?")
console.log(doTheyShare(person1,person2))

console.log("Do person1 and person3 share any traits?")
console.log(doTheyShare(person1,person3))

console.log("Do person2 and person3 share any traits?")
console.log(doTheyShare(person2,person3))

var dog1 = {name: "Carlos", color: "black", age: 4}
var dog2 = {name: "Leo", breed: "black lab", legs: 4}
var dog3 = {name: "Soots", breed: "black lab", age: 10}

console.log("Do dog1 and dog2 share any traits?")
console.log(doTheyShare(dog1,dog2))

console.log("Do dog1 and dog3 share any traits?")
console.log(doTheyShare(dog1,dog3))

console.log("Do dog2 and dog3 share any traits?")
console.log(doTheyShare(dog2,dog3))

// RELEASE 2

console.log("This is a random array of 3 words:")
console.log(wordArray(3))

console.log("This is a random array of 5 words:")
console.log(wordArray(5))


