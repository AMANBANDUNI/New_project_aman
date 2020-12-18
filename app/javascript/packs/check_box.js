document.addEventListener("DOMContentLoaded",() => {

console.log ("Hii where");

let check = document.querySelector('#chck');
check.addEventListener('click',()=>{
	check_all();
});

function check_all(){
	console.log ("Hii there");
	let e = document.querySelectorAll(".mychck")
	e.forEach((ele) => {
		ele.checked = ele.checked ? false : true;
		console.log('e', ele, ele.checked)
	})
	// console.log('e', e, e.checked)
	// e.checked = true
	// document.getElementById("mycheck").checked = true;
}

})