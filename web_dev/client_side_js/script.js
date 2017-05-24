console.log("The script is running! Woohoo");

function hugeText() {
  console.log("Executing hugeText function");
  div_one.style.fontSize = "100px";
}

var div = document.getElementsByTagName("div");
var div_one = div[0];

// console.log(div);
// console.log(div_one);

hugeText();
