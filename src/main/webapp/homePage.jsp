<html>
<body>
<jsp:include page="my-header.html" />
Really Good Website...<br> </br>
Really Good Website...<br> </br>
Really Good Website... <br> </br>
<jsp:include page="my-footer.jsp" />
<jsp:include page="my-footer.jsp" />
<h3>Training Portal</h3>
<%
 String favLangg="Java";
        Cookie[] theCookies=request.getCookies();
        if(theCookies !=null)
        {
        for(Cookie tempCookie : theCookies)
        {
        if("myApp.favLanguage".equals(tempCookie.getName()))
        {
        favLangg=tempCookie.getValue();
        break;
        }
        }
        }
%>
<h4> New Books for<%= favLangg %></h4>
<ul>
<li>Fine Fine Fine</li>
<li>Fine Fine Fine</li>
<li>Fine Fine Fine</li>
</ul>
<h4> New Letter for<%= favLangg %></h4>
<ul>
<li>Fine Fine Fine</li>
<li>Fine Fine Fine</li>
<li>Fine Fine Fine</li>
</ul>
<h4> New Lesson for<%= favLangg %></h4>
<ul>
<li>Fine Fine Fine</li>
<li>Fine Fine Fine</li>
<li>Fine Fine Fine</li>
</ul>
<hr>
<a href="student-form-registration.html">Personalize this Page </a>
</body>
</html>