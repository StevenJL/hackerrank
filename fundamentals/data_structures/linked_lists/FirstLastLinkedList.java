import java.io.*;

class Link {
  public int idata;
  public Link next;

  public Link(int idataArg) {
    idata = idataArg;
  }

  public void display() {
    System.out.println(idata);
  }
}

class FirstLastLinkedList {

  private Link firstLink;
  private Link lastLink;

  public FirstLastLinkedList() {
    firstLink = null;
    lastLink = null;
  }

  public void insertFirst(int num) {
    Link link = new Link(num);
    if(isEmpty()) {
      lastLink = link;
    }
    link.next = firstLink;
    firstLink = link;
  }

  public void insertLast(int num) {
    Link link = new Link(num);
    if(isEmpty()) {
      firstLink = link;
    } else {
      lastLink.next = link;
    }
    lastLink = link;
  }

  public void deleteFirst() {
    firstLink = firstLink.next;
  }

  public Link find(int num) {
    Link currentLink = firstLink;
    while(currentLink.idata != num ) {
      if(currentLink.next == null) {
        return null;
      }
      currentLink = currentLink.next;
    }
    return currentLink;
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
    FirstLastLinkedList linkedList = new FirstLastLinkedList();

    linkedList.insertFirst(3);
    linkedList.insertFirst(1);
    linkedList.insertFirst(4);
    linkedList.insertFirst(1);
    linkedList.insertFirst(5);
    linkedList.insertFirst(9);
    System.out.println(linkedList.find(9).idata);
  }
}

