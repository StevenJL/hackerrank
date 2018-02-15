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

class BracketCheck {
  private String brackets;
  private Stack stack;

  public BracketCheck(String inputBrackets) {
    brackets = inputBrackets;
    stack = new Stack(20);
  }

  private boolean matches(char left, char right) {
    if(left == '(' && right == ')') {
      return true;
    } else if (left == '[' && right == ']') {
      return true;
    } else if (left == '{' && right == '}') {
      return true;
    }
    return false;
  }

  public boolean isBalanced() {
    char currentChar;
    for(int i = 0; i < brackets.length(); i++) {
      currentChar = brackets.charAt(i);
      if(currentChar == '{' || currentChar == '(' || currentChar == '[') {
        stack.push(currentChar);
      }
      if(currentChar == '}' || currentChar == ')' || currentChar == ']') {
        if(stack.isEmpty()) {
          return false;
        }
        if(!matches(stack.pop(), currentChar)) {
          return false;
        }
      }
    }
    return true;
  }
}

class BracketCheckMain {
  public static void main(String[] args) {
    String brackets = "{()[(]{}()}";
    BracketCheck bracketCheck = new BracketCheck(brackets);
    if(bracketCheck.isBalanced()) {
      System.out.println("Balanced");
    } else {
      System.out.println("Unbalanced");
    }
  }
}
