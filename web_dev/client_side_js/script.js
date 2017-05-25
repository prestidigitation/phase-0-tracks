console.log("The script is running! Woohoo");

function hugeText(event) {
    console.log("Executing hugeText function");
    if (div_one.style.fontSize !== "25px") {
        div_one.style.fontSize = "25px";
  } else {
        // Defaults to the parent fontSize
        div_one.style.fontSize = "";
  }
}

function colorText(event) {
    console.log("Executing colorText function");
    div_two.style.color = "#56FF00";
}

function decolorText(event) {
    console.log("Executing decolorText function");
    div_two.style.color = "";
    // Defaults to the parent text color
}

var div = document.getElementsByTagName("div");
var div_one = div[0];
var div_two = div[1];

var resizeText = document.getElementById("resize_paragraph_one");
resizeText.addEventListener("click", hugeText);

var changeTextColor = document.getElementById("paragraph_two_color");
changeTextColor.addEventListener("mouseover", colorText);

var defaultTextColor = document.getElementById("paragraph_two_default");
defaultTextColor.addEventListener("mouseover", decolorText);
