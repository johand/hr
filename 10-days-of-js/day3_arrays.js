/**
   Task

   Complete the getSecondLargest function in the editor below. It has one
   parameter: an array, nums, of n numbers. The function must find and return
   the second largest number in nums.

   Input Format

   Locked stub code in the editor reads the following input from stdin and
   passes it to the function: The first line contains an integer, n, denoting
   the size of the nums array.  The second line contains nspace-separated
   numbers describing the elements in nums.

   Constraints

   * 1 <= n <= 100
   * 0 <= numbs <= 100, where nums is the number at index i
   * The numbers in nums are not distinct

   Output Format

   Return the value of the second largest number in the nums array.

   Sample Input 0

   5
   2 3 6 6 5

   Sample Output 0

   5

   Explanation 0

   Given the array nums = [2, 3, 6, 6, 5], we see that the largest value in the
   array is 6 and the second largest value is 5. Thus, we return 5 as our
   answer.
*/

function getSecondLargest(nums) {
  let n = Math.min(...nums);
  const uniqNums = [];
  const sortNums = nums.sort((a, b) => a - b);

  sortNums.forEach((number) => {
    let max = Math.max(...nums);

    if (uniqNums.indexOf(number) === -1) {
      number < max ? n = number : max = number;
      uniqNums.push(number);
    }
  });

  return n;
}
