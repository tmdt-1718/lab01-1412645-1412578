

function exitpost() {
	var html = '<button onclick="exitbegin()" type="button" class="btn btn-default" aria-label="Left Align">';
		html += '<span class="glyphicon glyphicon-remove" aria-hidden="true">';
		html += '</span>';
	html += '</button>';
	document.getElementById('exit').innerHTML = html;
}

function exitbegin() {
	document.getElementById('textpost').value = '';
	document.getElementById('exit').innerHTML = '';
}


function textAreaAdjust(o) {
  o.style.height = "1px";
  o.style.height = (25+o.scrollHeight)+"px";
}

function increase_height() {
	document.getElementById('new').style.height = '100%';
}



document.addEventListener("turbolinks:load", function() {
	var showChar = 250;
	var ellipsestext = "...";
	//var moretext = " see more";
	//var lesstext = "see less";
	$('.more').each(function() {

		var content = $(this).html();

		if(content.length > showChar) {

			var c = content.substr(0, showChar);
			var h = content.substr(showChar-1, content.length - showChar);
			var html = c + '<span class="moreellipses">' + ellipsestext; + '&nbsp;</span>';
			//<span class="morecontent"><span>' + h + "</span>&nbsp;&nbsp;<a href="<%= blog_path(@blog.id)%>">" + moretext + '</a></span>';
			$(this).html(html);
		}

	});

	/*$(".morelink").click(function(){
		if($(this).hasClass("less")) {
			$(this).removeClass("less");
			$(this).html(moretext);
		} else {
			$(this).addClass("less");
			$(this).html(lesstext);
		}
		$(this).parent().prev().toggle();
		$(this).prev().toggle();
		return false;
	});*/
});
