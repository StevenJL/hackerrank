import java.io.*;

class Link {
  private int idata;
  public Link next;

  public Link(int idataArg) {
    idata = idataArg;
  }

  public void display() {
    System.out.println(idata);
  }
}

class LinkedList {
  // insert first
  // delete First
  // display
  // isEmpty

  private Link firstLink;

  public LinkedList() {
    firstLink = null;
  }

  public void insertFirst(int num) {
    Link link = new Link(num);
    link.next = firstLink;
    firstLink = link;
  }

  public void deleteFirst() {
    firstLink = firstLink.next;
  }

  public void display() {
    Link currentLink = firstLink;
    while(currentLink != null) {
      currentLink.display();
      currentLink = currentLink.next;
    }
  }

  public boolean isEmpty() {
    return firstLink == null;
  }
}

class LinkedListMain {
  public static void main(String[] args) {
    LinkedList linkedList = new LinkedList();

    linkedList.insertFirst(3);
    linkedList.insertFirst(1);
    linkedList.insertFirst(4);
    linkedList.insertFirst(1);
    linkedList.insertFirst(5);
    linkedList.insertFirst(9);
    linkedList.display();
  }
}
