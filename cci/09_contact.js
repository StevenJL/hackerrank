class TryNode {
  constructor(value) {
    this.value = value
    this.children = []
  }

  findOrCreateChild(letter) {
    if(this.children.includes(letter)){
    }
  }


}

rootNode = new TryNode("*")

addWord = (word) => {
  for(letter of word.split("")) {
    rootNode.findOrCreateChild(letter)
  }
}

addWord("cat")
debugger



