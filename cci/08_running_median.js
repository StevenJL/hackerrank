/* The "cheating solution" that does not involve a heap */
function sortNumber(a,b) {
  return a - b;
}

function findMedian(array) {
  array.sort(sortNumber);
  var length = array.length;
  if ( length % 2 == 1) {
    var mid_index = Math.floor((length / 2));
    return array[mid_index];
  } else {
    var mid_index1 = (length / 2) - 1;
    var mid_index2 = (length / 2);
    return (array[mid_index1] + array[mid_index2])/2;
  }
}


