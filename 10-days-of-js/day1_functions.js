/**
   Task

   Implement a function named factorial that has one parameter: an integer, n
   .It must return the value of n! (i.e., factorial).

   Input Format

   Locked stub code in the editor reads a single integer, n, from stdin and
   passes it to a function named factorial.

   Constraints

   1 <= n <= 10

   Output Format

   The function must return the value of n!.

   Sample Input 0
   4

   Sample Output 0
   24

   Explanation 0
   We return the value of 4! = 4 x 3 x 2 x 1 = 24
*/

function factorial(n) {
  if (n === 1) return 1;

  return n * factorial(n - 1);
}
