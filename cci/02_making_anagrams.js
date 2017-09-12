// var a = "axgidbc";
// var b = "cbesxdfgd";

var a = "cde";
var b = "abc";

var a_array = a.split("").sort();
var b_array = b.split("").sort();

var a_len = a_array.length;
var b_len = b_array.length;

var a_index = 0;
var b_index = 0;
var answer = 0;
while (a_index < a_len && b_index < b_len) {
  a_letter = a_array[a_index];
  b_letter = b_array[b_index];
  if (a_letter == b_letter) {
    a_index++;
    b_index++;
  } else if (a_letter < b_letter) {
    a_index++;
    answer++;
  } else {
    b_index++;
    answer++;
  }
}
if (a_index < a_len) {
  answer = answer + (a_len - a_index)
}

if (b_index < b_len) {
  answer = answer + (b_len - b_index)
}

console.log(answer);
