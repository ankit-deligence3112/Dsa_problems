// Leetcode Problem number   53

// Brute Forece But on Large Cases TLE

// Solution 1

import 'dart:math';

int maxSubArray(List<int> nums) {
  int max_val = nums[0];
  if (nums.length == 1) {
    return nums[0];
  }

  for (int start = 0; start < nums.length; start++) {
    int curr_sum = 0;
    for (int end = start; end < nums.length; end++) {
      curr_sum = curr_sum + nums[end];
      max_val = max(max_val, curr_sum);
    }
  }
  return max_val;
}

// Solution 2

// Kadane's Algorithm

int maxSubArray2(List<int> nums) {
  int max_val = nums[0];
  int curr_sum = nums[0];

  for (int i = 1; i < nums.length; i++) {
    curr_sum = max(nums[i], curr_sum + nums[i]);
    max_val = max(max_val, curr_sum);
  }

  return max_val;
}

// Solution 3  Just logic change reset current sum to 0 if its negative

int maxSubArray3(List<int> nums) {
  int max_val = nums[0];
  int curr_sum = 0;
  for (int i = 0; i < nums.length; i++) {
    curr_sum += nums[i];
    max_val = max(max_val, curr_sum);
    if (curr_sum < 0) {
      curr_sum = 0;
    }
  }

  return max_val;
}
