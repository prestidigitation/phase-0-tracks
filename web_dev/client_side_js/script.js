console.log("The script is running! Woohoo");

function hugeText(event) {
  console.log("Executing hugeText function");
  div_one.style.fontSize = "100px";
}

var div = document.getElementsByTagName("div");
var div_one = div[0];

var resizeText = document.getElementById("resize_paragraph_one");
resizeText.addEventListener("click", hugeText);

// console.log(div);
// console.log(div_one);
