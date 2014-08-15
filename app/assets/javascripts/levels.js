
var dragSrcEl = null;
var splited = [];
var result = [];

function handleDragStart(e) {
  // Target (this) element is the source node.
  this.style.opacity = '1';
  dragSrcEl = this;
  e.dataTransfer.effectAllowed = 'move';
  e.dataTransfer.setData('object', this.innerHTML);
}

function handleDragOver(e) {
  if (e.preventDefault) {
    e.preventDefault(); // Necessary. Allows us to drop.
  }

  e.dataTransfer.dropEffect = 'move';  // See the section on the DataTransfer object.

  return false;
}

function handleDragEnter(e) {
  // this / e.target is the current hover target.
  this.classList.add('over');
}

function handleDragLeave(e) {
  this.classList.remove('over');  // this / e.target is previous target element.
}

function handleDrop(e) {
  // this/e.target is current target element.


  console.log('movido', $(dragSrcEl).data('animal-id'));

  if (e.stopPropagation) {
    e.stopPropagation(); // Stops some browsers from redirecting.
  }



  // Don't do anything if dropping the same column we're dragging.
  if (dragSrcEl != this) {
  	//var a = [];
    // Set the source column's HTML to the HTML of the columnwe dropped on.
    dragSrcEl.innerHTML = this.innerHTML;
    //a = (e.dataTransfer.getData('object')).split(">");
    this.innerHTML = e.dataTransfer.getData('object');

  }

  return false;
}

 // dragSrcEl.innerHTML = this.innerHTML;
 //    result.push(e.dataTransfer.getData('object'));
 //    this.innerHTML = e.dataTransfer.getData('object');

function handleDragEnd(e) {
  // this/e.target is the source node.
   this.style.opacity = '1';

  [].forEach.call(anims, function (anim) {
    anim.classList.remove('over');				
  });
}

var anims = document.querySelectorAll('#animals .animal');
	[].forEach.call(anims, function(anim) {
	  anim.addEventListener('dragstart', handleDragStart, false);
	  anim.addEventListener('dragenter', handleDragEnter, false)
	  anim.addEventListener('dragover', handleDragOver, false);
	  anim.addEventListener('dragleave', handleDragLeave, false);
	  // anim.addEventListener('drop', handleDrop, false);
	  anim.addEventListener('dragend', handleDragEnd, false);
});

var cols = document.querySelectorAll('#columns .column');
	[].forEach.call(cols, function(col) {
	  col.addEventListener('dragstart', handleDragStart, false);
	  col.addEventListener('dragenter', handleDragEnter, false)
	  col.addEventListener('dragover', handleDragOver, false);
	  col.addEventListener('dragleave', handleDragLeave, false);
	  col.addEventListener('drop', handleDrop, false);
	  col.addEventListener('dragend', handleDragEnd, false);
});

var getAnimalArray = function() {
	return $.map($('#columns .animal-object'), function( value, index ) {
		return $(value).data('animal-id');
	});
};

$('#button').on('click', function() {
	var animalIds = getAnimalArray();
	$.ajax({
		url: '/completeds/play',  // no debe estar hardcoded
		dataType: 'JSON',
 		data: {animals: animalIds},
		method: 'POST'
	}).done(function() {
    	alert( "success" );
	}).fail(function() {
	    alert( "error" );
	});
});













var date = new Date();
var target_date = date.setSeconds(date.getSeconds() + limit);


var timeOut = function() {
	alert('boooom!!');
};



// // set the date we're counting down to
// var target_date = new Date("Aug 15, 2019").getTime();
 
// // variables for time units
var days, hours, minutes, seconds;
 
// // get tag element
var countdown = document.getElementById("countdown");
 
// // update the tag with id "countdown" every 1 second
var interval = setInterval(function () {
 
	// find the amount of "seconds" between now and target
	var current_date = new Date().getTime();
	var seconds_left = (target_date - current_date) / 1000;
 	
 	if (seconds_left < 0) {
 		timeOut();
 	}

  	// do some time calculations
    days = parseInt(seconds_left / 86400);
    seconds_left = seconds_left % 86400;
     
    hours = parseInt(seconds_left / 3600);
    seconds_left = seconds_left % 3600;
     
    minutes = parseInt(seconds_left / 60);
    seconds = parseInt(seconds_left % 60);
     
    // format countdown string + set tag value
    countdown.innerHTML = days + "d, " + hours + "h, "
    + minutes + "m, " + seconds + "s";  
}, 1000);
