// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var j = 1;
j = j + 2;

var food = prompt("Please enter your favorite food.");
alert("Hey, " + food + " that's my favorite food too!");



// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
// Looping a Triangle

for (var number = 1; number <= 100; number += 1)
  if (number % 3 == 0)
    console.log("Fizz");
  else if (number % 5 == 0)
    console.log("Buzz");
  else
    console.log(number);

// Functions

// Complete the `minimum` exercise.

function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
name: "Todd Seller",
age: "45"
favorites: "Pizza, Ice Cream, Skittles"
quirk: "I own over 1,100 movies"

}