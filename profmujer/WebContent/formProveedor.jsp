<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container">
<h1>Bootstrap File Input Example</h1>
<form enctype="multipart/form-data">
<div class="form-group">
<input id="file-1" type="file" class="file" multiple=true data-preview-file-type="any">
</div>
<div class="form-group">
<input id="file-2" type="file" class="file" readonly=true>
</div>
<div class="form-group">
<input id="file-3" type="file" multiple=true>
</div>
<div class="form-group">
<button class="btn btn-primary">Submit</button>
<button class="btn btn-default" type="reset">Reset</button>
</div>
</form>
</div>
<script>
$("#file-3").fileinput({
showCaption: false,
browseClass: "btn btn-primary btn-lg",
fileType: "any"
});
</script>
</body>
</html>