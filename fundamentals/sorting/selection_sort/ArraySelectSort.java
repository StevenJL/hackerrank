import java.io.*;

class ArraySelectSort {
  private long[] storageArray;
  private int numElements;

  public ArraySelectSort(int max) {
    storageArray = new long[max];
    numElements = 0;
  }

  public void insert(long el) {
    storageArray[numElements++] = el;
  }

  public void selectionSort() {
    for(int outer_indx = 0; outer_indx < numElements - 1; outer_indx++) {
      for(int indx = outer_indx + 1; indx < numElements; indx++) {
        if(storageArray[outer_indx] > storageArray[indx]) {
          swap(outer_indx, indx);
        }
      }
    }
  }

  public void swap(int indx1, int indx2) {
    long temp = storageArray[indx1];
    storageArray[indx1] = storageArray[indx2];
    storageArray[indx2] = temp;
  }

  public void display() {
    for(int j = 0; j < numElements; j++) {
      System.out.println(storageArray[j]);
    }
  }
}

class ArraySelectionSortMain {
  public static void main(String[] args) {
    ArraySelectSort arraySelectSort = new ArraySelectSort(50);

    arraySelectSort.insert(20);
    arraySelectSort.insert(10);
    arraySelectSort.insert(1);
    arraySelectSort.insert(5);
    arraySelectSort.insert(7);
    arraySelectSort.insert(12);
    arraySelectSort.insert(5);
    arraySelectSort.insert(7);
    arraySelectSort.insert(13);
    arraySelectSort.insert(42);

    arraySelectSort.selectionSort();
    arraySelectSort.display();
  }
}
