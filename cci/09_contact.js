var partialMap = new Map()

function storePartial(string) {
  attemptFetch = partialMap.get(string)
  if(attemptFetch) {
    partialMap.set(string, attemptFetch + 1)
  } else {
    partialMap.set(string, 1)
  }
}

function generatePartial(string) {
  storePartial(string)
  // i is lower end
  for(var i = 0; i < string.length - 1 ; i++) {
    // j is upper end
    for(var j = i+1 ; j < string.length; j++) {
      storePartial(string.slice(i,j))
    }
  }
}

wut = "awwhellnaw"

generatePartial(wut)
debugger

