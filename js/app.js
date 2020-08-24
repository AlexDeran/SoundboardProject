mybutton = document.getElementById('myBtnfr2top');

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function () {
	scrollFunction();
};

function scrollFunction() {
	if (
		document.body.scrollTop > 800 ||
		document.documentElement.scrollTop > 800
	) {
		mybutton.style.display = 'block';
	} else {
		mybutton.style.display = 'none';
	}
}

// ya aurait juste a faire un foreach et une concaténation en php mais il n'y en a pas en js car c'est un langage incompréhensible qui pue la grosse merde

let allsounds = document.getElementsByClassName('vid');
console.log(allsounds);

// for (let i = 1;i)
$(document).ready(function () {
	/* Get iframe src attribute value i.e. YouTube video url
    and store it in a variable */
	var url = $('#vidsrc').attr('src');

	/* Assign empty url value to the iframe src attribute when
    modal hide, which stop the video playing */
	$('#lienvid1').on('hide.bs.modal', function () {
		$('#vidsrc').attr('src', '');
	});

	/* Assign the initially stored url back to the iframe src
    attribute when modal is displayed again */
	$('#lienvid1').on('show.bs.modal', function () {
		$('#vidsrc').attr('src', url);
	});
});
