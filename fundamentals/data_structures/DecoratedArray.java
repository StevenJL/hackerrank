import java.io.*;
class DecoratedArray {

  private long[] storageArray;
  private int numElements;
  private int maxNumElements;

  // constructor
  public DecoratedArray(int maxNumElements) {
    storageArray = new long[maxNumElements];
  }

  // find element in array
  public boolean find(long target) {
    for (int j=0 ; j < numElements; j++) {
      if(storageArray[j] == target) {
        return true;
      }
    }
    return false;
  }

  // insert element into end of array
  public void insert(long element) {
    storageArray[numElements++] = element;
  }

  // display array
  public void display() {
    for(int j=0; j < numElements; j++) {
      System.out.print(storageArray[j]);
    }
    System.out.println("");
  }

  // deletes and returns boolean of whether or not delete
  // was successful
  public boolean deleteEl(long element) {
    int j = 0;
    while(j < numElements) {
      if(storageArray[j] == element) {
        break;
      }
      j++;
    }

    if(j == numElements) {
      return false;
    }
    for(int i = j; i < numElements; i++) {
      storageArray[i] = storageArray[i+1];
    }
    numElements--;
    return true;
  }
}

class DecoratedArrayMain {
  public static void main(String[] args) {
    DecoratedArray decoratedArray = new DecoratedArray(30);
    decoratedArray.insert(1);
    decoratedArray.insert(4);
    decoratedArray.insert(1);
    decoratedArray.insert(5);
    decoratedArray.insert(9);
    decoratedArray.insert(3);

    decoratedArray.deleteEl(4);
    if(decoratedArray.find(4)) {
      System.out.println("You dun goofed");
    }

    decoratedArray.display();
  }
}
