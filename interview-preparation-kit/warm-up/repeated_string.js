// There is a string, s, of lowercase English letters that is repeated infinitely
// many times.Given an integer, n, find and print the number of letter a's in the
// first n letters of the infinite string.

// Example

// s = 'abcac'
// n = 10

// The substring we consider is abcacabcac, the first 10 characters of the infinite
// string.There are 4 occurrences of a in the substring.

// Function Description

// Complete the repeatedString function in the editor below.
// repeatedString has the following parameter(s):

// s: a string to repeat
// n: the number of characters to consider

// Returns

// * int: the frequency of a in the substring

// Input Format

// The first line contains a single string, s.
// The second line contains an integer, n.

// Constraints

// * 1 <= | s | <= 100
// * 1 <= n <= 10 ** 12
// * For 25 % of the rest cases, n <= 10 ** 6

// Sample Input

// Sample Input 0

// aba
// 10

// Sample Output 0

// 7

// Explanation 0

// The first n = 10 letters of the infinite string are abaabaabaa.Because there
// are 7 a's, we return 7.

// Sample Input 1

// a
// 1000000000000

// Sample Output 1

// 1000000000000

// Explanation 1

// Because all of the first n = 1000000000000 letters of the infinite string are
// a, we return 1000000000000.

// Complete the 'repeatedString' function below.
//
// The function is expected to return a LONG_INTEGER.
// The function accepts following parameters:
//  1. STRING s
//  2. LONG_INTEGER n

const repeatedString = (s, n) => {
  let countA = 0;
  let timesS = Math.floor(n / s.length);
  let rest = n % s.length;

  for (let l of s) {
    if (l === 'a') {
      countA += 1;
    }
  }

  return countA * timesS + s.slice(0, rest).split('a').length - 1;
};

console.log(repeatedString('aba', 10));
