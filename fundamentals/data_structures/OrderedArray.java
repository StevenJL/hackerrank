import java.io.*;

class OrderedArray {

  private long[] storageArray;
  private int maxNumElements;
  private int numElements;

  // constructor
  public OrderedArray(int maxNumElements) {
    storageArray = new long[maxNumElements];
    numElements = 0;
  }

  public boolean find(long target) {
    int low = 0;
    int high = numElements;
    int currentIndex;

    while(true) {
      currentIndex = (low + high)/2;

      if(storageArray[currentIndex] == target) {
        return true;
      }

      if(low > high) {
        return false;
      }

      if(storageArray[currentIndex] < target) {
        low = currentIndex + 1;
      } else if (target < storageArray[currentIndex]) {
        high = currentIndex - 1;
      }
    }
  }

  public boolean deleteEl(long element) {

    int j;
    for(j = 0; j < numElements; j++) {
      if(storageArray[j] == element) {
        break;
      }
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

  public void insert(long element) {
    int j = 0;
    while(j < numElements) {
      if(element < storageArray[j]) {
        break;
      }
      j++;
    }
    numElements++;
    for(int i = numElements; i > j; i--) {
      storageArray[i] = storageArray[i-1];
    }
    storageArray[j] = element;
  }

  public void display() {
    for(int j = 0; j < numElements; j++) {
      System.out.print(storageArray[j]);
    }
    System.out.println("");
  }
}

class OrderedArrayMain {
  public static void main(String[] args) {
    OrderedArray orderedArray = new OrderedArray(50);
    orderedArray.insert(10);
    orderedArray.insert(11);
    orderedArray.insert(3);
    orderedArray.insert(7);
    orderedArray.insert(9);
    orderedArray.insert(1);
    orderedArray.deleteEl(9);
    orderedArray.display();
    if(orderedArray.find(5)){
      System.out.println("You dun' goofed");
    }
    if(orderedArray.find(3)){
      System.out.println("You found 3");
    }
  }
}

