
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
      console.log("${prop} doesn't match.");
    }
  };
  return false
};








// function doTheyShare(object1,object2){
// //(Object.keys(arr)) returns array of keys...
//   object1Keys = [Object.keys(object1)];
//   object2Keys = [Object.keys(object2)];
//   matchedKeys = [];
//   for (var i1 = 0; i1 < object1Keys.length ; i1++){
//   console.log("checking " + object1Keys[i1] + "...");
//     for (var i2 = 0; i2 < object2Keys.length ; i2++){
//       if (object1Keys[i1] == object2Keys[i2]){
//         console.log(object1Keys[i1] + " matches...");
//         var key = object1Keys[i1];
//         if (object1[key] == object2[key]){
//           console.log("and so do their values.");
//           matchedKeys.push(key);
//           console.log("Matched so far: " + matchedKeys);
//         }
//         else {
//           console.log(" but values don't match.");
//         };
//       };
//     };
//   };
//   if (matchedKeys.length > 0){
//     return true;
//   }
//   else {
//     return false;
//   };
// };


/////////////// DRIVER CODE ///////////////

var person1 = {name: "Cate", age: 29, city: "Atlanta"}
var person2 = {name: "Maria", age: 29, city: "Miami"}
var person3 = {name: "Erica", age: 15, city: "New York"}

console.log("Do person1 and person3 share any traits?")
console.log(doTheyShare(person1,person3))



