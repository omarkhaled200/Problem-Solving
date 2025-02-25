class Solution {
  List<int> nextGreaterElement(List<int> nums1, List<int> nums2) {
    List<int> ans = [];

    for (int num in nums1) {
      int index = nums2.indexOf(num); // الحصول على الفهرس في nums2
      int nextGreater = -1;

      for (int x = index + 1; x < nums2.length; x++) {
        if (nums2[x] > num) {
          nextGreater = nums2[x];
          break; // توقف عند أول عنصر أكبر
        }
      }
      
      ans.add(nextGreater);
    }

    return ans;
  }
}
