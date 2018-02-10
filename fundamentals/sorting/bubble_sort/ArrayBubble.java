import java.io.*;

class ArrayBub {
  private long[] storageArray;
  private int numElements;

  public ArrayBub(int max) {
    storageArray = new long[max];
    numElements = 0;
  }

  public void insertEl(long el) {
    storageArray[numElements++] = el;
  }

  public void bubbleSort() {
    int loops = 0;
    while(loops < numElements) {
      for(int i = 0; i < numElements - 1; i++) {
        if(storageArray[i] > storageArray[i+1]) {
          swap(i,i+1);
        }
      }
      loops++;
    }
  }

  private void swap(int index1, int index2) {
    long temp = storageArray[index1];
    storageArray[index1] = storageArray[index2];
    storageArray[index2] = temp;
  }

  public void display() {
    for(int j = 0; j < numElements; j++) {
      System.out.println(storageArray[j]);
    }
  }
}

class ArrayBubMain {
  public static void main(String[] args) {
    ArrayBub arrayBub = new ArrayBub(50);
    arrayBub.insertEl(24);
    arrayBub.insertEl(50);
    arrayBub.insertEl(3);
    arrayBub.insertEl(4);
    arrayBub.insertEl(7);
    arrayBub.insertEl(9);
    arrayBub.insertEl(12);
    arrayBub.insertEl(11);
    arrayBub.bubbleSort();

    arrayBub.display();
  }
}
