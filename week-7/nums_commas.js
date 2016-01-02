// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Karen Ball.

// Pseudocode
/*
 Input: Integer
 Output: comma separated string

Convert integer to string array
Iterate through array and check if index is evenly divisible by 3
IF index is divisible by 3, add comma
Return comma separated array

*/

// Initial Solution

// function separateComma(integer) {
//   var array = integer.toString().split('').reverse();
//   for(var i = 0; i < array.length; i++) {
//     if(i % 3 === 0 && i !== 0) {
//       array[i] += ",";
//     }
//   }
//   return array.reverse().join('');
// };

// Refactored Solution

function separateComma(integer){
  return integer.toLocaleString();
}



// Your Own Tests (OPTIONAL)

console.log(separateComma(50))
console.log(separateComma(500))
console.log(separateComma(654321))
console.log(separateComma(6543213216546))


// Reflection
/*
  What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
  I think the way we approached the problem was no different in JavaScript then how we approached the problem in Ruby. I think that having done the exercise in Ruby first, made it easier because we already had a frame of reference for the solution.

  What did you learn about iterating over arrays in JavaScript?
  Having worked on the Codecademy JavaScript track, I found that iterating over an array in JavaScript is not that different from Ruby.

  What was different about solving this problem in JavaScript?
  In looking back at my original Ruby challenge code, I think our initial solution to the problem was very similar. The biggest difference came in the refactoring where JavaScript has a built-method that would format the string with a single line of code.

  What built-in methods did you find to incorporate in your refactored solution?
  My partner, Karen, had some prior classes in JavaScript and was very familiar with the .toLocaleString method. This was the only method we used in the refactoring of our initial solution.
*/