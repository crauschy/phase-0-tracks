var ary = ["cat", "horse", "elephant"];

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
console.log("The longest element of")
console.log(ary)
console.log("is:")
console.log((longestWord(ary)))

// The above works in repl.it.... I don't know why it's not working on node in command line :(