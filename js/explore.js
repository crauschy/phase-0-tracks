// starting with the last index of "hello", add each letter to a new string
function reverse(word){
  var reversedWord = ""
  for (var i = (word.length - 1); i >= 0; i--){
    var reversedWord = (reversedWord + word[i])
  }
  return reversedWord;
}

reverse("hello")

var storage = [];

storage.push((reverse("hello")));

storage.push((reverse("cate")));

storage.push((reverse("bootcamp")));

if (0 < 1) {
  console.log(storage);
}