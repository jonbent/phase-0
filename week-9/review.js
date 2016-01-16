/*
=== User Stories ===
1. As a user I want to be able to create a new grocery list.
2. As a user I want to be able to add an item and quantity to the grocery list.
3. As a user I want to be able to update an item's quantity.
4. As a user I want to be able to remove an item from the grocery list.
5. As a user I want to be able to print out my grocery list.

=== Pseudocode ===
Create List Array
1. Create an empty array to store list items.

Create List Object
Input: Accept item and quantity inputs from HTML form.
Output: Display item name and quantity on HTML page.
1. Get input values for item and quantity.
2. Create new list object.
3. Add item to list object with the key item.
4. Add qty to list object with the key qty.
5. Add list item to array.
6. Create HTML element to display on HTML page.

Update List Object
Input: Accept item and quantity inputs from HTML form.
Output: Update item's quantity on HTML page.
1. Get input values for item and quantity.
2. Iterate through array to find item.
3. Assign qty key the updated quantity value.
4. Update HTML element to reflect updated value.

Remove List Object
Input Accept item input from HTML form.
Output: Remove item and quantity from HTML page.
1. Get input value for item.
2. Iterate through the array and remove item object from array.
3. Remove HTML element.
*/

var listArr = [];

function add() {
  var listItem = document.getElementById('addItemInput').value.toLowerCase();
  var itemQty = document.getElementById('addQtyInput').value;
  var frm = document.getElementsByName('item-list')[0];
     
  frm.reset();
  list = new Object();
  list['item'] = listItem;
  list['qty'] = parseInt(itemQty);
  listArr.push(list);

  var addListItem = document.createElement('li');
  var addListQty = document.createElement('li');

  addListItem.innerHTML = listItem;
  addListItem.id = listItem;
  addListQty.innerHTML = itemQty;
  addListQty.id = listItem + '-qty';

  document.getElementById('items').appendChild(addListItem);
  document.getElementById('qty').appendChild(addListQty)
}

function updateItem() {
  var listItem = document.getElementById('addItemInput').value.toLowerCase();
  var itemQty = document.getElementById('addQtyInput').value;
  var frm = document.getElementsByName('item-list')[0];

  frm.reset();

  for (var i = 0; i  < listArr.length; i++) {
    if (listArr[i].item === listItem) {
      listArr[i].qty = parseInt(itemQty);
      document.getElementById(listItem + '-qty').innerHTML = itemQty;
    }
  }
}

function removeItem() {
  var listItem = document.getElementById('addItemInput').value.toLowerCase();
  var frm = document.getElementsByName('item-list')[0];

  frm.reset();

  for (var i = 0; i < listArr.length; i++) {
    if (listArr[i].item === listItem) {
      listArr.splice(i, 1);
      i--; 
      var removeThisItem = document.getElementById(listItem);
      var removeThisQty = document.getElementById(listItem + '-qty');

      document.getElementById('items').removeChild(removeThisItem);
      document.getElementById('qty').removeChild(removeThisQty);
    }
  }
}

/*
=== Reflection ===

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
This really helped solidify iterating over an array and modifying to DOM.

What was the most difficult part of this challenge?
Beyond the fact that I decided to go overboard and create this as a web project, I struggled a bit accessing the item objects within the array.

Did an array or object make more sense to use and why?
I actually used both. I found that it made the most amount of sense to create an item object to store the item name and quantity. I then added the item object to the array.





