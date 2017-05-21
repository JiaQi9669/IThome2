
/*init preview Image  */
function previewImage(file,maxwidth,maxheight) {

	/*init max size  */
	var MAXWIDTH = maxwidth;
	var MAXHEIGHT = maxheight;

	/*get parent div */
	var div = document.getElementById('preview');

	if (file.files && file.files[0]) {
		/*inner img */
		/*div.innerHTML = '<img id=imghead>';*/
		/*get img  */
		var img = document.getElementById('imghead');
		/*img.onload = function() {
			var rect = initSize(MAXWIDTH, MAXHEIGHT,img.offsetWidth, img.offsetHeight);
			img.width = rect.width;
			img.height = rect.height;
			img.style.marginLeft = rect.left + 'px';
			img.style.marginTop = rect.top + 'px';
		}*/
		var reader = new FileReader();
		reader.onload = function(evt) {
			img.src = evt.target.result;
		}
		reader.readAsDataURL(file.files[0]);
	} /*else {
		alert("123");
		var sFilter = 'filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale,src="';
		file.select();
		var src = document.selection.createRange().text;
		
		var src;
		(document.selection.createRange().text)=="" ? null : src = document.selection.createRange().text;
		
		div.innerHTML = '<img id=imghead>';
		var img = document.getElementById('imghead');
		img.filters.item('DXImageTransform.Microsoft.AlphaImageLoader').src = src;
		var rect = initSize(MAXWIDTH, MAXHEIGHT, img.offsetWidth,img.offsetHeight);
		status = ('rect:' + rect.top + ',' + rect.left + ',' + rect.width + ',' + rect.height);

		div.innerHTML = "<div id=divhead style='z-index:0;width:"+rect.width+"px;height:"+rect.height+"px;margin-top:"+rect.top+"px;margin-left:"+rect.left+"px;"+sFilter+src+"\"'></div>";
	}*/
}

/*init img size  */
function initSize(maxWidth, maxHeight, width, height) {
	var param = {
			top : 0,
			left : 0,
			width : width,
			height : height
	};
	if (width > maxWidth || height > maxHeight) {
		rateWidth = width / maxWidth;
		rateHeight = height / maxHeight;
		if (rateWidth > rateHeight) {
			param.width = maxWidth;
			param.height = Math.round(height / rateWidth);
		} else {
			param.width = Math.round(width / rateHeight);
			param.height = maxHeight;
		}
	}
	param.left = Math.round((maxWidth - param.width) / 2);
	param.top = Math.round((maxHeight - param.height) / 2);
	return param;
}