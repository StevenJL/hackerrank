import java.io.*;

class Stack {
  private int maxSize;
  private int numElements;
  private long[] storageArray;

  public Stack(int maxSizeInput) {
    maxSize = maxSizeInput;
    numElements = 0;
    storageArray = new long[maxSize];
  }

  public void push(long el) {
    storageArray[numElements++] = el;
  }

  public long pop() {
    return storageArray[--numElements];
  }

  public long peek() {
    return storageArray[numElements-1];
  }

  public boolean isEmpty() {
    return numElements == 0;
  }

  public boolean isFull() {
    return numElements == maxSize;
  }

  public void display() {
    for(int i = 0; i < numElements; i++) {
      System.out.println(storageArray[i]);
    }
  }
}

class StackMain {
  public static void main(String[] args) {
    Stack stack = new Stack(50);
    stack.push(12);
    stack.push(8);
    stack.push(9);
    stack.push(11);
    stack.push(3);

    System.out.println(stack.peek());
    System.out.println(stack.pop());
    System.out.println(stack.pop());
    stack.push(42);
    stack.display();
  }
}
