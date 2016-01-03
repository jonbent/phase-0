function sum(integers) {
  var total = 0
  for (var i = 0; i < integers.length; i++) {
    total += integers[i];
  };
  return total;
};

function mean(integers) {
  var total = 0
  for (var i = 0; i < integers.length; i++) {
    total += integers[i];
  };
  return total/integers.length;
};

function median(integers) {
  integers.sort(function(a,b) {return a - b});

  var middle = Math.floor(integers.length / 2);

  if (integers.length % 2 !== 0) {
    return integers[middle];
  };
  return (integers[middle - 1] + integers[middle]) / 2.0;
};