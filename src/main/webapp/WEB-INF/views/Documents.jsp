<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body>
<H3>WELCOME TO DOCUMENTS PAGE</H3>
<form action="upload" method="post" enctype="multipart/form-data">
<pre>
ID: <input type="text" name="fileId"/>
Doc: <input type="file" name="fileOb"/>
<input type="submit" value="upload"/>
</pre>
</form>
${message }
</body>
</html>