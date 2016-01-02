// JavaScript Olympics

// I paired Jovanka Nikolovski on this challenge.

// This challenge took me [#] hours.


// Warm Up



// Bulk Up
var athletes = [
  {name: "Sarah Hughes", event: "Ladies' Singles"},
  {name: "Michael Phelps", event: "Swimming"}
]

function winner(athletes) {
  for(var i = 0; i < athletes.length; i++) {
    athletes[i].win = function() {
      console.log(this.name + " won the " + this.event + " event.");
    }
  }
};

winner(athletes);
athletes[0].win();



// Jumble your words


function reverseWords(words) {
 console.log(words.split("").reverse().join(""));
};

var words = "!sdrow ruoy elbmuJ"
reverseWords(words)


// 2,4,6,8

function evenNumbers(numbers) {
  var evenArray = [];
  for(var i = 0; i < numbers.length; i++) {
    if(numbers[i] % 2 === 0){
      evenArray.push(numbers[i]);
    }
  }
  return console.log(evenArray);
}

var numbers = [1,2,3,4,5,6,7,8,9,10];

evenNumbers(numbers);

// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Reflection

/*
  What JavaScript knowledge did you solidify in this challenge?
  This challenge really helped me solidify my knowledge in writing a function in JavaScript and iterating over an array.

  What are constructor functions?
  Constructor functions contain related variables or blocks of code that can be called in later code. They're useful for situations in which there are repetitive sections of code. 

  How are constructors different from Ruby classes (in your research)?
  The constructor is the class definition in JavaScript, but in Ruby the constructor is one of the functions in the class.
*/