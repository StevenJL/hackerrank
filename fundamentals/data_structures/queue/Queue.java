import java.io.*;

class Queue {

  // insert (item goes in rear)
  // remove (item in front)
  // peek front
  // isFull
  // isEmpty
  // size

  private long[] storageArray;

  // index where last element is
  private int backIndex;
  private int frontIndex;
  private int numElements;
  private int maxElements;

  public Queue(int maxElements) {
    storageArray = new long[maxElements];
    numElements = 0;
    backIndex = -1;
    frontIndex = 0;
  }

  public long peek() {
    return storageArray[frontIndex];
  }

  public boolean isEmpty() {
    return numElements == 0;
  }

  public void insert(long Element) {
    if(backIndex == maxElements - 1) {
      backIndex = 0;
    }
    storageArray[backIndex++] = Element;
    numElements++;
  }

  public long remove() {
    long temp = storageArray[frontIndex];
    if(frontIndex == maxElements - 1){
      frontIndex = 0;
    } else {
      frontIndex++;
    }
    numElements++;
    return temp;
  }

  public long size() {
    return numElements;
  }
}
