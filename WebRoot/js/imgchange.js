function previewImage(file,maxwidth,maxheight) {
/*	var div = document.getElementById('preview');*/
	if (file.files && file.files[0]) {
		var img = document.getElementById('imghead');
		var reader = new FileReader();
		reader.onload = function(evt) {
			img.src = evt.target.result;
		};
		reader.readAsDataURL(file.files[0]);
	}
}