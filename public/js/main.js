// Contact Form
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

// Modal for Viewing Profile
// setTimeout(function(){
//     document.getElementById("ProfileModal").style.display = "block";
// });

// document.getElementById("button1").addEventListener("click", function(event){
// 	event.preventDefault();
// 	    document.getElementById("ProfileModal").style.display = "none";
// });
