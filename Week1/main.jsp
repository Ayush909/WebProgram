<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "x" uri="http://java.sun.com/jsp/jstl/xml" %>

<html>
   <head>
      <title>JSTL x:parse Tags</title>
   </head>

   <body>
      <h3>plants Info:</h3>
      <c:import var = "plantInfo" url="http://localhost/week1/plants.xml"/>

      <x:parse xml = "${plantInfo}" var = "output"/>
      <b>The title of the first plant is</b>:
      <x:out select = "$output/plants/plant[1]/name" />
      <br>

      <b>The price of the second plant</b>:
      <x:out select = "$output/plants/plant[2]/price" />
   </body>
</html>
