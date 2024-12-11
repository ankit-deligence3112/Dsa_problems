// Leetcode palindrome problem number - 9;
// Solution 1

bool isPalindrome(int x) {
  int dup = x;
  int revN = 0;
  while (x > 0) {
    int last = x % 10;
    revN = (revN * 10) + last;
    x = x ~/ 10;
  }
  if (revN == dup) {
    return true;
  } else {
    return false;
  }
}

// Solution 2

bool isPalindrome2(int x) {
  String sx = x.toString();
  int n = sx.length;
  for (int i = 0; i < n ~/ 2; i++) {
    if (sx[i] != sx[n - 1 - i]) {
      return false;
    }
  }
  return true;
}
