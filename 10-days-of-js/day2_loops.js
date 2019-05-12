/**
   Task

   Complete the vowelsAndConsonants function in the editor below. It has one
   parameter, a string, s, consisting of lowercase English alphabetic letters
   (i.e., a through z). The function must do the following:

   1. First, print each vowel in s on a new line. The English vowels are a, e,
   i, o, and u, and each vowel must be printed in the same order as it appeared
   in s.

   2. Second, print each consonant (i.e., non-vowel) in s on a new line in the
   same order as it appeared in s.

   Input format

   Locked stub code in the editor reads string s from stdin and passes it to the
   function.

   Output format

   First, print each vowel in s on a new line (in the same order as they
   appeared in s). Second, print each consonant (i.e., non-vowel) in s on a new
   line (in the same order as they appeared in s).

   Sample input 0

   javascriptloops

   Sample Output 0

   a
   a
   i
   o
   o
   j
   v
   s
   c
   r
   p
   t
   l
   p
   s

   Explanation 0

   Observe the following:

   * Each letter is printed on a new line.
   * Then the vowels are printed in the same order as they appeared in s.
   * Then the consonants are printed in the same order as they appeared in s.
   */

function vowelsAndConsonants(s) {
  const vowels = ['a', 'e', 'i', 'o', 'u'];
  let consonants = '';

  for (const letter of s) {
    vowels.includes(letter) ? console.log(letter) : consonants += `${letter}\n`;
  }

  console.log(consonants);
}
