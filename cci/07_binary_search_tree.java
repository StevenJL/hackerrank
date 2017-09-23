
class Node {
    int data;
    Node left;
    Node right;
 }

class Main {
    boolean checkBSTAux(Node node, int min, int max) {
        if (node.data < min)
            return false;
        if (node.data > max)
            return false;
        if (node.left == null && node.right == null)
            return true;
        if (!checkBSTAux(node.left, min, node.data-1))
            return false;
        if (!checkBSTAux(node.right, node.data+1, max))
            return false;

        return true;
    }

    boolean checkBST(Node root) {
        return checkBSTAux(root, -1, 10001);
    }
}
