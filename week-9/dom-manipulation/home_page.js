// DOM Manipulation Challenge


// I worked on this challenge with: Megan Munch.


// Add your JavaScript calls to this page:

// Release 0:
document.getElementById('release-0').classList.add('done');

// Release 1:
document.getElementById('release-1').style.display = "none";

// Release 2:
document.getElementsByTagName('h1')[0].innerHTML = "I completed release 2.";

// Release 3:
document.getElementById('release-3').style.backgroundColor = "#955251";

// Release 4:
var myList = document.querySelectorAll('.release-4');

for (var i = 0; i < myList.length; i++) {
  myList[i].style.fontSize = "2em";
};

// Release 5:
var tmpl = document.getElementById('hidden');

document.body.appendChild(tmpl.content.cloneNode(true));