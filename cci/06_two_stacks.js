var input = [
  "10",
  "1 1",
  "1 2",
  "2",
  "1 3",
  "3",
  "1 4",
  "3",
  "1 5",
  "1 6",
  "3",
  "2",
  "2",
]

class VirtualQueue {
  constructor() {
    this.stack1 = []
    this.stack2 = []
  }

  enqueue(element) {
    this.stack1.push(element)
  }

  dequeue() {
    while (this.stack1.length > 0) {
      this.stack2.push(this.stack1.pop())
    }
    var output = this.stack2.pop()
    while (this.stack2.length > 0) {
      this.stack1.push(this.stack2.pop())
    }
    return output
  }

  peek() {
    return this.stack1[0]
  }
}

function processInstruction(instruction, queue) {
  if (instruction == "2") {
    queue.dequeue()
    return queue
  } else if (instruction == "3") {
    console.log(queue.peek())
    return queue
  } else if (instruction.split(" ").length == 2){
    var number = instruction.split(" ")[1]
    queue.enqueue(number)
    return queue
  } else {
    return queue
  }
}

var queue = new VirtualQueue

function processInput(input_array) {
  for(let index = 0; index < input_array.length; index++) {
    var instruction = input_array[index]
      queue = processInstruction(instruction, queue)
  }
}

processInput(input)

