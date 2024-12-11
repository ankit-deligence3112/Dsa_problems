// Leetcode Revserse Number problem number 7

// Solution 1

int reverse(int x) {
  int num = 0;
  const int min32Bit = -2147483648;
  const int max32Bit = 2147483647;
  if (!(x >= min32Bit && x <= max32Bit)) {
    return 0;
  } else {
    int revN = 0;
    if (x < 0) {
      String d = x.toString();
      num = int.parse(d.substring(1, d.length));
    } else {
      num = x;
    }
    while (num > 0) {
      int last = num % 10;
      revN = (revN * 10) + last;
      num = num ~/ 10;
    }
    if (revN >= min32Bit && revN <= max32Bit) {
      return x > 0 ? revN : -revN;
    }
    return 0;
  }
}

// Solution 2

int reverse2(int x) {
  int rev = 0;
  int sign = x < 0 ? -1 : 1;
  x = x.abs();
  while (x != 0) {
    int pop = x % 10;
    x = x ~/ 10;
    if (rev > 214748364 || (rev == 214748364 && pop > 7)) {
      return 0;
    }
    rev = rev * 10 + pop;
  }
  return rev * sign;
}
