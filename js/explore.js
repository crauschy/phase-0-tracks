// starting with the last index of "hello", add each letter to a new string
var reversedWord = ""

function reverse(word){
  var reversedWord = ""
  for (var i = (word.length - 1); i >= 0; i--){
    var reversedWord = (reversedWord + word[i])
  }
  console.log((word) + " reversed is " +reversedWord)
}

reverse("hello")