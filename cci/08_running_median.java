import java.io.*;

/*
 * 0 1 2 3 4 5
 *
 */

class MinHeap {
  private int[] storageArray;
  private int maxSize;
  private int numElements;

  public MinHeap(int maxSizeArg) {
    maxSize = maxSizeArg;
    numElements = 0;
    storageArray = new int[maxSizeArg];
  }

  private int parentIndex(int childIndex) {
    return (childIndex - 1) / 2;
  }

  private int leftChildIndex(int parentIndex) {
    return (parentIndex * 2) + 1;
  }

  private int rightChildIndex(int parentIndex) {
    return (parentIndex * 2) + 2;
  }

  private void swap(int index1, int index2) {
    int temp = storageArray[index1];
    storageArray[index1] = storageArray[index2];
    storageArray[index2] = temp;
  }

  private void swapDown(int index) {
    int parentVal = storageArray[index];
    int leftChildIndex = leftChildIndex(index);
    int rightChildIndex = rightChildIndex(index);
    if(leftChildIndex > numElements - 1) {
      return;
    }
    int leftChildVal = storageArray[leftChildIndex];
    int rightChildVal = storageArray[rightChildIndex];
    int indexToFillFrom;
    if(rightChildIndex > numElements - 1) {
      indexToFillFrom = leftChildIndex;
    } else if(leftChildVal < rightChildVal) {
      indexToFillFrom = leftChildIndex;
    } else {
      indexToFillFrom = rightChildIndex;
    }
    storageArray[index] = storageArray[indexToFillFrom];
    swapDown(indexToFillFrom);
  }

  private void swapUp(int index) {
    int childVal = storageArray[index];
    int parentIndex = parentIndex(index);
    int parentVal = storageArray[parentIndex];
    if(parentVal > childVal) {
      swap(index, parentIndex);
      swapUp(parentIndex);
    }
  }

  public int pop() {
    int top = storageArray[0];
    storageArray[0] = storageArray[numElements--];
    swapDown(0);
    return top;
  }

  public void insert(int el) {
    storageArray[numElements] = el;
    swapUp(numElements++);
  }

  public void display() {
    for(int i = 0; i < numElements; i++) {
      System.out.println(storageArray[i]);
    }
  }
}

class MinHeapMain {
  public static void main(String[] args) {
    MinHeap minheap = new MinHeap(100);
    minheap.insert(20);
    minheap.insert(2);
    minheap.insert(120);
    minheap.insert(12);
    minheap.insert(1);
    minheap.insert(30);
    minheap.display();
  }
}
