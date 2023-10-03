<html>
<body>
<h2 style="background-color:powderblue"> Hello World!</h2>
<i> The time on the Server = <%= new java.util.Date()%> </i>
<br></br>
converting a string to uppercase : <%=   new String("balaji how r u").toUpperCase() %>
<br></br>
14 is multiplied by 23 : <%= 14*23 %>
<br></br>
14 is greater than 23 : <%= 14>23 %>
<br></br>
<% for(int i=0;i<=3;i++) {out.println("</br> print as : "+i);}%>
<%!
String MakeItLower(String input)
{
return input.toLowerCase();
}
%>
<br></br>
Lower Case "Hello World : " <%= MakeItLower("HELLO WORLD") %>
</body>
</html>
