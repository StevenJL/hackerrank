// magazine = "two times two three is not four"
// ransom = "two times two is four"

magazine = "give me one grand today night"
ransom = "give one grand today"

    magazine_array = magazine.split(" ")
    ransom_array = ransom.split(" ")

    function array_to_object(word_array) {
      var result_object = {};
      for ( let indx = 0; indx < word_array.length; indx++) {
        word = word_array[indx];
        if (result_object[word]) {
          result_object[word]++;
        } else {
          result_object[word] = 1;
        }
      }
      return result_object;
    }

    magazine_obj = array_to_object(magazine_array)
    ransom_obj = array_to_object(ransom_array)

    var answer = true
    for (word in ransom_obj) {
      word_count = ransom_obj[word]
      if(magazine_obj[word] < word_count) {
        answer = false
      }
    }

    console.log(answer);
