TreeNode? reverseOddLevels(TreeNode? root) {
  if (root == null) return null;
  reverseEachLevel(root.left, root.right, 0);
  return root;
}

void reverseEachLevel(TreeNode? l1, TreeNode? l2, int level) {
  if (l1 == null || l2 == null) return;
  if (level % 2 == 0) {
    var n = l1.val;
    l1.val = l2.val;
    l2.val = n;
  }
  reverseEachLevel(l1.left, l2.right, level + 1);
  reverseEachLevel(l1.right, l2.left, level + 1);
}

class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}
