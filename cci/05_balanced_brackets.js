function match(brack1, brack2) {
  if (brack1 == "{" && brack2 == "}") {
    return true;
  } else if (brack1 == "[" && brack2 == "]") {
    return true;
  } else if (brack1 == "(" && brack2 == ")") {
    return true;
  }
  return false;
}

function is_balanced(brackets) {
  var left_brackets = [ "{" ,"[", "(" ]

  var stack = [];
  var answer = true;
  brackets_array = brackets.split("")

  for (let indx = 0; indx < brackets_array.length; indx++ ) {
    bracket = brackets_array[indx]
    if (left_brackets.includes(bracket)) {
      stack.push(bracket)
    } else {
      var last_brack = stack[stack.length - 1]
      if (match(last_brack, bracket)) {
        stack.pop()
        continue
      } else {
        answer = false
        break
      }
    }
  }
  if (stack.length != 0) {
    answer = false
  }
  return answer
}

console.log(is_balanced("{"))
