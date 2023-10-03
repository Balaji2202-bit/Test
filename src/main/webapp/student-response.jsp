<%@ page import="java.util.*" %>
<html>
<head>
    <title>Confirmation Page</title>
</head>

<body>
    <% 
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String country = request.getParameter("country");
        String FavoriteLanguage=request.getParameter("FavoriteLanguage");
        String confirmationMessage =  "The Student is Confirmed: " + firstName + " " + lastName;
        String confirmationMessage1 = "The Student's country is: "+country;
        String confirmationMessage2 = "The Student's Favorite Computer Language is: "+FavoriteLanguage;
        String confirmationMessage3="Student Known Languages";
        String favLang=request.getParameter("favLanguage");
        Cookie theCookie=new Cookie("myApp.favLanguage",favLang);
        theCookie.setMaxAge(60*60*24*365);
        response.addCookie(theCookie);
           %>
    <h1>Confirmation</h1>
    <p> <%= confirmationMessage %> </p>
    <p><%= confirmationMessage1 %></p>
    <p><%= confirmationMessage2 %></p>
    <p><%= confirmationMessage3 %></p>
</body>
<body>
<%
String[] Language=request.getParameterValues("FavoriteLanguage1");
if(Language!=null)
{
for(String s:Language)
       {
       out.println("<li>" +s+"</li>");
       }
       }
        out.print("<br/>");
%>
</body>
<body>
<form action="student-response.jsp">
Add New Item:<input type="text" name="theItem" />
<input type="submit" name="submit" />
</form>
<br>
    item entered:
<%= request.getParameter("theItem")%>
<%
List<String> items= (List<String>) session.getAttribute("myDoList");
if(items==null)
{
 items= new ArrayList<String>();
 session.setAttribute("myDoList",items);
 }
 String theItem=request.getParameter("theItem");

 boolean isItemNotEmpty =( theItem != null) && theItem.trim().length() > 0;
 boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());

     	if (isItemNotEmpty && isItemNotDuplicate)
     	{
     		items.add(theItem.trim());
     	}
 %>
 <hr>
 <b> To List Items:</b> <br/>
 <ol>
 <%
 for(String temp:items)
 {
 out.println("<li>"+temp+"</li>");
 }
 %>
 </ol>
</body>
<%
String favLang1=request.getParameter("favLanguage");
        Cookie theCookie1=new Cookie("myApp.favLanguage",favLang1);
        theCookie1.setMaxAge(60*60*24*365);
        response.addCookie(theCookie);
%>
<body>

String Thanks!_We_set_your_favourite_language_to= request.getParameter("favLanguage");

<br/> <br/>
<a href="homePage.jsp"> Return to homepage.</a>

</body>
</html>
