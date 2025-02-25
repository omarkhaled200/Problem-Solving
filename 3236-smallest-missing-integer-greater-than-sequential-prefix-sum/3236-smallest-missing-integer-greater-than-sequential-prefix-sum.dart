class Solution {
  int missingInteger(List<int> nums) {
    int seqSum = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (nums[i] == nums[i - 1] + 1) {
      seqSum += nums[i];
    } else {
      break;
    }
  }
  Set<int> numSet = nums.toSet();
  while (numSet.contains(seqSum)) {
    seqSum++;
  }
  return seqSum;
  }
}