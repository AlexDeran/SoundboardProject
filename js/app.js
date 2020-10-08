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

var audioBuffer = null;
window.AudioContext = window.AudioContext || window.webkitAudioContext;
var audioContext = null;
var source;
var deferredPrompt;
function play(url) {
	if (audioContext == null) {
		audioContext = new AudioContext();
	}
	var request = new XMLHttpRequest();
	if (source) {
		try {
			source.stop();
		} catch (err) {}
	}
	source = audioContext.createBufferSource();
	source.connect(audioContext.destination);
	request.open('GET', url, true);
	request.responseType = 'arraybuffer';
	request.onload = function () {
		audioContext.decodeAudioData(request.response, function (buffer) {
			source.buffer = buffer;
			source.start(0);
		});
	};
	request.send();
	function addstop() {
		document.getElementById('stopsnd').innerHTML =
			'<i class="fas fa-stop-circle" onclick ="stop()">';
	}
	addstop();
}

function stop() {
	source.stop();
	document.getElementById('stopsnd').innerHTML = '';
}
