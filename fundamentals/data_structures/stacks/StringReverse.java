import java.io.*;

class Stack {
  private int maxSize;
  private int numElements;
  private char[] storageArray;

  public Stack(int maxSizeInput) {
    maxSize = maxSizeInput;
    numElements = 0;
    storageArray = new char[maxSize];
  }

  public void push(char el) {
    storageArray[numElements++] = el;
  }

  public char pop() {
    return storageArray[--numElements];
  }

  public char peek() {
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

class StringReverseMain {
  public static void main(String[] args) {
    String string = "monkey";
    Stack stack = new Stack(string.length());


    for(int i = 0; i < string.length(); i++) {
      stack.push(string.charAt(i));
    }

    String output = "";
    while(!stack.isEmpty()) {
      output = output + stack.pop();
    }

    System.out.println(output);
  }
}
