/**
   Task

   We define S to be a sequence of distinct sequential integers from 1 to n; in
   other words, S = {1, 2, 3, ..., n}. We want to know the maximum bitwise AND
   value of any two integers, a and b (where a < b), in sequence S that is also
   less than a given integer, k.

   Complete the function in the editor so that given n and k, it returns the
   maximum a & b < k.

   Note: The & symbol represents the bitwise AND operator.

   Input Format

   The first line contains an integer, q, denoting the number of function calls.
   Each of the q subsequent lines defines a dataset for a function call in the
   form of two space-separated integers describing the respective values of n
   and k.

   Constraints

   * 1 <= q <= 10**3
   * 2 <= n <= 10**3
   * 2 <= k <= n

   Output Format

   Return the maximum possible value of a & b < k for any a < b in sequence S.

   Sample Input 0

   3
   5 2
   8 5
   2 2

   Sample Output 0

   1
   4
   0

   Explanation

   We perform the following q = 2 function calls:

   1. When n = 9 and k = 2, the maximum of any a & b < k in set
      S = { 1, 2, 3, 4, 5, 6, 7, 8, 9 } is 1, so we return 1.

   2. When n = 8 and k = 3, the maximum of any a & b < k in set
      S = { 1, 2, 3, 4, 5, 6, 7, 8 } is 2, so we return 2.
*/

function getMaxLessThanK(n, k) {
  let max = 0;

  for (let i = 1; i <= n; i += 1) {
    for (let j = i + 1; j <= n; j += 1) {
      if ((i & j) < k & (i & j) > max) max = i & j;
    }
  }

  return max;
}
