
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

////////// RELEASE 1 ///////////

// compare two objects
// do any keys match; if not, return false
// if yes, loop through the matched keys and compare the respective values;
// once a value ever matches, break loop and return true
// if no values match, return false

function doTheyShare(object1,object2)
