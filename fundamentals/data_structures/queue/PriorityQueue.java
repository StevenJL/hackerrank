import java.io.*;

// Priority Queue will always sort upon insertion so that max value is at 0
// and min is at the end of the array. The smallest item is always removed first.
class PriorityQueue {

  private long[] storageArray;
  private int numElements;
  private int maxElements;

  public PriorityQueue(int maxElementsArg) {
    maxElements = maxElementsArg;
    numElements = 0;
    storageArray = new long[maxElements];
  }

  public void insert(long element) {
    if(numElements == 0) {
      storageArray[0] = element;
      numElements++;
      return;
    }

    int i = 0;
    while(i < maxElements - 1) {
      if(storageArray[i] < element) {
        break;
      }
      i++;
    }

    for(int k = maxElements - 1; k > i; k--) {
      storageArray[k] = storageArray[k-1];
    }

    storageArray[i] = element;

    numElements++;
  }

  public long remove() {
    return storageArray[--numElements];
  }

  public void display() {
    for(int i = 0; i < numElements; i++) {
      System.out.println(storageArray[i]);
    }
  }
}

class PriorityQueueMain {
  public static void main(String[] args) {
    PriorityQueue priorityQ = new PriorityQueue(20);
    priorityQ.insert(20);
    priorityQ.insert(10);
    priorityQ.insert(30);
    priorityQ.insert(50);
    priorityQ.display();
  }
}

