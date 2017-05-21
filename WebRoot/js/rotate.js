var rotX = 0;
var rotY = -15;
var currX = 0;
var currY = 0;
tracking = false;

$(document).ready(function() {
  setBindings();
  setRotation(0,0);
  v_showup();
});
$(window).scroll(function() {v_showup()});
function setBindings() {
  $('.threedbox').on('mousedown touchstart', function(e) {
    if (e.type == "touchstart") {
     interactionStart(e.originalEvent.touches[0].clientX, e.originalEvent.touches[0].clientY);
    } else {
      interactionStart(e.clientX, e.clientY);
    }
    e.preventDefault();
  });

  $('.threedbox').on('mousemove touchmove', function(e) {
    if (e.type == "touchmove") {
      interactionMove(e.originalEvent.touches[0].clientX, e.originalEvent.touches[0].clientY);
    } else {
      interactionMove(e.clientX, e.clientY);
    }
    e.preventDefault();
  });

  $('.threedbox').on('mouseup touchend', function(e) {interactionEnd();e.preventDefault();});
}

function interactionStart(x, y) {
  currX = x;
  currY = y;
  tracking = true;
}

function interactionMove(x, y) {
  if (tracking == false) {
    return;
  }
  var deltaX = x - currX;
  var deltaY = y - currY;
  setRotation(deltaX, deltaY);
  currX = x;
  currY = y;
}

function setRotation(x, y) {
  if (tracking == false) {setTimeout(function() {setBindings();}, 1000);}
  rotX+=x/2;
  rotY+=-y/2;
  if (rotX >= 180) {rotX-=360;} else if (rotX <= (-179)) {rotX+=360;}
  if (rotY >= 90) {rotY = 90;} else if (rotY <= (-90)) {rotY = -90;}
  $('.space .bone').css({transform:'rotateX('+rotY+'deg) rotateY('+rotX+'deg)'});
}

function interactionEnd() {tracking = false;}

function v_showup() {
  	var wintop=$(window).scrollTop()+$(window).height();
  	var view1=$('#view1').position().top;
  	var view2=$('#view2').position().top;
  	var view3=$('#view3').position().top;
  	var view4=$('#view4').position().top;
  	if (wintop>=view1){$('#view1').addClass("slid");}
  	if (wintop>=view2){$('#view2').addClass("slidr");}
  	if (wintop>=view3){$('#view3').addClass("slid");}
  	if (wintop>=view4){$('#view4').addClass("slidr");}
  	}
