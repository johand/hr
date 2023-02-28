// Given a 6 x 6 2D Array, A:

// 1 1 1 0 0 0
// 0 1 0 0 0 0
// 1 1 1 0 0 0
// 0 0 0 0 0 0
// 0 0 0 0 0 0
// 0 0 0 0 0 0

// We define an hourglass in A to be a subset of values with indices falling in
// this pattern in A's graphical representation:

// a b c
//   d
// e f g

// There are 16 hourglasses in A, and an hourglass sum is the sum of an
// hourglass' values.

// Task

// Calculate the hourglass sum for every hourglass in A, then print the maximum
// hourglass sum.

// Input Format

// There are 6 lines of input, where each line contains 6 space - separated
// integers describing 2D Array A; every value in A will be in the inclusive
// range of - 9 to 9.

// Constraints

// * -9 <= A[i][j] <= 9
// 0 <= i, j <= 5

// Output Format

// Print the largest(maximum) hourglass sum found in A.

// Sample Input

// 1 1 1 0 0 0
// 0 1 0 0 0 0
// 1 1 1 0 0 0
// 0 0 2 4 4 0
// 0 0 0 2 0 0
// 0 0 1 2 4 0

// Sample Output

// 19

// Explanation

// A contains the following hourglasses:

// 1 1 1   1 1 0   1 0 0   0 0 0
//   1       0       0       0
// 1 1 1   1 1 0   1 0 0   0 0 0

// 0 1 0   1 0 0   0 0 0   0 0 0
//   1       1       0       0
// 0 0 2   0 2 4   2 4 4   4 4 0

// 1 1 1   1 1 0   1 0 0   0 0 0
//   0       2       4       4
// 0 0 0   0 0 2   0 2 0   2 0 0

// 0 0 2   0 2 4   2 4 4   4 4 0
//   0       0       2       0
// 0 0 1   0 1 2   1 2 4   2 4 0

// The hourglass with the maximum sum(19) is:

// 2 4 4
//   2
// 1 2 4

// Complete the 'hourglassSum' function below.
//
// The function is expected to return an INTEGER.
// The function accepts 2D_INTEGER_ARRAY arr as parameter.

const hourGlassSum = arr => {
  const result = [];

  for (let ri = 0; ri < arr.length; ri++) {
    if (ri > 3) break;

    for (let ci = 0; ci < arr.length; ci++) {
      if (ci > 3) continue;

      const top = arr[ri][ci] + arr[ri][ci + 1] + arr[ri][ci + 2];
      const center = arr[ri + 1][ci + 1];
      const bottom =
        arr[ri + 2][ci] + arr[ri + 2][ci + 1] + arr[ri + 2][ci + 2];

      result.push(top + center + bottom);
    }
  }

  return Math.max(...result);
};

const arr = [
  [1, 1, 1, 0, 0, 0],
  [0, 1, 0, 0, 0, 0],
  [1, 1, 1, 0, 0, 0],
  [0, 0, 2, 4, 4, 0],
  [0, 0, 0, 2, 0, 0],
  [0, 0, 1, 2, 4, 0],
];

console.log(hourGlassSum(arr));
