<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<script>
	var getJSON = function(url, successHandler, errorHandler) {
		var xhr = (typeof XMLHttpRequest != 'undefined') ? new XMLHttpRequest() : new ActiveXObject('Microsoft.XMLHTTP');
		xhr.open('GET', url, true);
	 	
		xhr.onreadystatechange = function() {
	    	var status;
	    	var data;
	    	if (xhr.readyState == 4) { 
	      		status = xhr.status;
	     		 if (status == 200) {
	        		data = xhr.responseText;
	        		parent.document.getElementById("content").innerHTML = "<h1>" + data + "</h1>";
	        		//document.getElementById("content").innerHTML = data;
	     		 } else {
	        		errorHandler && errorHandler(status);
	      		}
	    	}
	  };
	  xhr.send();
	};
</script>

</head>
<body>
	<!-- <div id="content"></div> -->
	<script>
		getJSON('/time/getTime', true, true);
	</script>
</body>
</html>