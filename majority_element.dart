// Majority Element in a List Leetcode

// Solution 1

int majorityElement(List<int> nums) {
  int n = nums.length;
  Map count = {};
  for (int i in nums) {
    count[i] = (count[i] ?? 0) + 1;
    if (count[i] > n ~/ 2) {
      return i;
    }
  }
  return 0;
}

// Solution 2

// Because if we sort the list the maximum
//repeated element that comes more than n/2 will always comes at n/2 index

int majorityElement2(List<int> nums) {
  nums.sort();
  return nums[nums.length ~/ 2];
}

// Booyer Moore Voting Algo 0(N)

int majorityElement3(List<int> nums) {
  int count = 0;
  int result = 0;

  for (var num in nums) {
    if (count == 0) {
      result = num;
    }

    if (result == num) {
      --count;
    } else {
      ++count;
    }
  }

  return result;
}
