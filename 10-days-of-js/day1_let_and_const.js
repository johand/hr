/**
 * Task
 *
 * 1. Declare a constant variable, PI, and assign it the value Math.PI. You will
 *    not pass this challenge unless the variable is declared as a constant and
 *    named PI (uppercase).
 *
 * 2. Read a number, r, denoting the radius of a circle from stdin.
 *
 * 3. Use PI and r to calculate the area and perimeter of a circle having
 *    radius r
 *
 * 4. Print area as the first line of output and print parameter as the second
 *    line of output.
 *
 * Input format
 * A single integer, r, denoting the radius of a circle.
 *
 * Constraints
 *
 * * 0 < r <= 100
 * * r is a floating-point number scaled to at most 3 decimal places.
 *
 * Output Format
 *
 * Print the following two lines:
 *
 * 1. On the first line, print the area of the circle having radius r.
 * 2. On the second line, print the perimeter of the circle having radius r.
 *
 * Sample Input 0
 * 2.6
 *
 * Sample Output 0
 * 21.237166338267002
 * 16.336281798666924
 */

function main() {
  // Write your code here. Read input using 'readLine()' and print output using
  // 'console.log()'.
  const PI = Math.PI;
  const r = readLine();

  // Print the area of the circle:
  console.log(PI * (r ** 2));
  // Print the perimeter of the circle:
  console.log(2 * PI * r);
}
