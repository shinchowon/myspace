 $(document).ready(function($){	
	var AudioContext;
	var audioContext;
	window.onload = function () {
	    navigator.mediaDevices.getUserMedia({
	      audio: true,
	    }).then(function () {
	      AudioContext = window.AudioContext || window.webkitAudioContext;
	      audioContext = new AudioContext();
	      $('#play-btn').click();
	    }).catch(function(e) {console.log(e);});
	 };		
	 var songs = [
		{
			title: "Tomorrow Tonight",
			artist: "Loote",
			audioFile: "/myspacecw/resources/mp3/Loote-Tomorrow Tonight.mp3"
		},
		{
				title: "Psycho",
				artist: "Maisie Peters",
				audioFile: "/myspacecw/resources/mp3/MaisiePeters-Psycho.mp3"
			},
			{
					title: "All Falls Down Lyrics",
					artist: "Alan Walker",
					audioFile: "/myspacecw/resources/mp3/AlanWalker-All Falls Down Lyrics.mp3"
				},
				{
					title: "To All The Boys Ive Loved Before Lyrics",
					artist: "hJax",
					audioFile: "/myspacecw/resources/mp3/Jax-To All The Boys Ive Loved Before Lyrics.mp3"
				}
				];
		for (var i = 0, songs = songs; i < songs.length; i++) {
			var song = songs[i];
			$("#songs").append('<li class="song" data-audio="' + song.audioFile + '">' + '<p class="song-title">' + song.title + '</p>' + '<p class="song-artist">' + song.artist + '</p>' + '</li>');
		}	
		 
		$('.jcarousel').jcarousel({
			 wrap: 'circular'		 
		});
  });
	

	 // Current slide
	 $('.jcarousel').on('jcarousel:visiblein', 'li', function (event, carousel) {		
		 console.log(carousel);
		 var songTitle = $(this).find("p.song-title").html();
		 var songArtist = $(this).find("p.song-artist").html();
		 var audioSrc = $(this).attr("data-audio");
			
		 player.currentTime = 0;
		 player.load();
		 $("audio").find("source").attr("src", "" + audioSrc + "");
		 $("#song-info .artist-wrap p").find("span.title").html(songTitle);
		 $("#song-info .artist-wrap p").find("span.artist").html(songArtist);
		 event.stopPropagation();
		 
	 });
		// Previous slide
		$('#previous-btn').click(function () {
		  $('.jcarousel').jcarousel('scroll', '-=1');
		  $('#play-btn').find('span').remove();
		  $('#play-btn').append('<span class="material-symbols-sharp">play_arrow</span>');
		  player.play();
		});

		// Next slide
		$('#next-btn').click(function () {
		  if ($(".random").hasClass('active')) {
		    var songs = $("#songs li").length - 1;
		    var randomSong = Math.floor(Math.random() * songs) + 1;
		    $('.jcarousel').jcarousel('scroll', '+=' + randomSong);
		  } else {
			 $('.jcarousel').jcarousel('scroll', '+=1');
		  }
		   $('#play-btn').find('span').remove();
		   $('#play-btn').append('<span class="material-symbols-sharp act">pause</span>');
		   player.play();
		});

		// Play Icon
		$('#play-btn').click(function () {
		  if ($(this).find('span').hasClass('act')) {
		    $(this).find('span').remove();
		    $(this).append('<span class="material-symbols-sharp">play_arrow</span>');
		  } else {
		    $(this).find('span').remove();
		    $(this).append('<span class="material-symbols-sharp act">pause</span>');
		  }
		  
		});
		$('#sub-controls i').click(function () {
		  $(this).toggleClass('active');
		});

		/** Music Player * */

		var audioPlayer = document.querySelector('.mpContent');
		var progress = audioPlayer.querySelector('.progress');
		var sliders = audioPlayer.querySelectorAll('.slider');
		var player = audioPlayer.querySelector('audio');
		var currentTime = audioPlayer.querySelector('#current-time');
		var totalTime = audioPlayer.querySelector('#total-time');
		var draggableClasses = ['pin'];
		var currentlyDragged = null;
		window.addEventListener('mousedown', function (event) {
		  if (!isDraggable(event.target)) return false;
		  currentlyDragged = event.target;
		  var handleMethod = currentlyDragged.dataset.method;
		  this.addEventListener('mousemove', window[handleMethod], false);
		  window.addEventListener('mouseup', function () {
		    currentlyDragged = false;
		    window.removeEventListener('mousemove', window[handleMethod], false);
		  }, false);
		});
		$('#play-btn').click(function () {
		  togglePlay();
		});
		player.addEventListener('timeupdate', updateProgress);
		player.addEventListener('loadedmetadata', function () {
		  totalTime.textContent = formatTime(player.duration);
		});
		player.addEventListener('ended', function () {
		  player.currentTime = 0;
		  if ($(".refresh").hasClass('active')) {
		    togglePlay();
		  } else {
		    if ($(".random").hasClass('active')) {
		      var songs = $("#songs li").length - 1;
		      var randomSong = Math.floor(Math.random() * songs) + 1;
		      $('.jcarousel').jcarousel('scroll', '+=' + randomSong);
		    } else {
		      $('.jcarousel').jcarousel('scroll', '+=1');
		    }
		    togglePlay();
		  }
		});
		sliders.forEach(function (slider) {
		  var pin = slider.querySelector('.pin');
		  slider.addEventListener('click', window[pin.dataset.method]);
		});
		function isDraggable(el) {
		  var canDrag = false;
		  var classes = Array.from(el.classList);
		  draggableClasses.forEach(function (draggable) {
		    if (classes.indexOf(draggable) !== -1) canDrag = true;
		  });
		  return canDrag;
		}
		function inRange(event) {
		  var rangeBox = getRangeBox(event);
		  var direction = rangeBox.dataset.direction;
		  var screenOffset = document.querySelector(".mpContent").offsetLeft + 26;
		  var min = screenOffset - rangeBox.offsetLeft;
		  var max = min + rangeBox.offsetWidth;
		  if (event.clientX < min || event.clientX > max) {
		    return false;
		  }
		  ;
		  return true;
		}
		function updateProgress() {
		  var current = player.currentTime;
		  var percent = current / player.duration * 100;
		  progress.style.width = percent + '%';
		  currentTime.textContent = formatTime(current);
		}
		function getRangeBox(event) {
		  var rangeBox = event.target;
		  var el = currentlyDragged;
		  if (event.type == 'click' && isDraggable(event.target)) {
		    rangeBox = event.target.parentElement.parentElement;
		  }
		  if (event.type == 'mousemove') {
		    rangeBox = el.parentElement.parentElement;
		  }
		  return rangeBox;
		}
		function getCoefficient(event) {
		  var slider = getRangeBox(event);
		  var screenOffset = document.querySelector(".mpContent").offsetLeft + 26;
		  var K = 0;
		  var offsetX = event.clientX - screenOffset;
		  var width = slider.clientWidth;
		  K = offsetX / width;
		  return K;
		}
		function rewind(event) {
		  if (inRange(event)) {
		    player.currentTime = player.duration * getCoefficient(event);
		  }
		}
		function formatTime(time) {
		  var min = Math.floor(time / 60);
		  var sec = Math.floor(time % 60);
		  return min + ':' + (sec < 10 ? '0' + sec : sec);
		}
		function togglePlay() {
		  player.volume = 0.5;
		  if (player.paused) {
		    player.play();
		  } else {
		    player.pause();
		  }
		}
	