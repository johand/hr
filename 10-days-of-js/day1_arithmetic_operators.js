/**
 * Task
 *
 * Complete the following functions in the editor below:
 *
 * 1. getArea(length, width): Calculate and return the area of a rectangle
 * having sides length and width
 *
 * 2. getPerimeter(length, width): Calculate and return the perimeter of a
 * rectangle having sides length and width.
 *
 * Constraints
 *
 * * 1 <= length, width <= 1000
 * * length and width are scaled to at most three decimal places
 *
 * Output Format
 *
 * Sample Input 0
 *
 * 3
 * 4.5
 *
 * Sample Output 0
 *
 * 13.5
 * 15
 *
 * Explanation 0
 *
 * The area of the rectangle is length x width = 3 x 4.5 = 13.5.
 * The perimeter of the rectangle is 2 * (length + width) = 2 * (3 + 4.5) = 15
 */

/**
 * Calculate the area of a rectangle.
 *
 * length: The length of the rectangle.
 * width: The width of the rectangle.
 *
 * Return a number denoting the rectangle's area.
 */

function getArea(length, width) {
  let area;
  // Write your code here
  area = length * width;
  return area;
}

/**
 * Calculate the perimeter of a rectangle.
 *
 * length: The length of the rectangle.
 * width: The width of the rectangle.
 *
 * Return a number denoting the perimeter of a rectangle.
 */

function getPerimeter(length, width) {
  let perimeter;
  // Write your code here
  perimeter = 2 * (length + width);
  return perimeter;
}
