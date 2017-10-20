let contactMessage;

document.addEventListener("DOMContentLoaded", function(){
	contactMessage = document.querySelector(".contactMessage");
	contactMessage.addEventListener("click", function(){
		console.log("clicked?")
		let elForm = document.querySelector("#form");
		elForm.style.display = "block";
		elForm.style.height = "inherit";
		elForm.style.opacity = 1;
	});
});