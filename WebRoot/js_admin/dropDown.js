$(function(){
	var PutDown = function(el,tag){
		var _this_ = this
		this.el = el || {};
		this.tag = tag || false;
		var link = this.el.find('.link');
		link.on('click', {el: this.el, tag: this.tag}, this.dropDown)
		console.log(link);
	}
	PutDown.prototype = {
		dropDown:function(e){
			var $el = e.data.el,
				$tag = e.data.tag,
				$this = $(this),
				$next = $this.next();
				console.log($next)

			$next.slideToggle();
			$this.parent().toggleClass('open');

			if(!$tag){
				$el.find('.desc').not($next).slideUp().parent().removeClass('open');
			}
		}
	};
	var putdown = new PutDown($('.container'),false);
});
    	function changeFrameHeight(){
		    var ifm= document.getElementById("iframepage"); 
		    ifm.height=(document.documentElement.clientHeight)-100;
		}
		window.onresize=function(){  changeFrameHeight();}; 