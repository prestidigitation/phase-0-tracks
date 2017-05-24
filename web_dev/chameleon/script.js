console.log("The script is running!");

function addPinkBorder(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.border = "2px solid pink";
}

function hideLizard(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  photo.hidden = true;
  // photo.style.display = "none";
}

function revealLizard(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  photo.hidden = false;
  // photo.style.display = "none";
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", addPinkBorder);

var button_one = document.getElementById("hide_button");
button_one.addEventListener("click", hideLizard);

var button_two = document.getElementById("reveal_button");
button_two.addEventListener("click", revealLizard);
