<%-- 
    Document   : index
    Created on : Jan 31, 2013, 12:52:40 PM
    Author     : nsorenson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--
              function validateRect - Validates that data has been entered in the text
                                      boxes.  Returns false and gives an alert window 
                                      if invalid data is entered.
        --%>
        <script>
            function validateRect(){
                var len = document.forms["Rectangle"]["length"];
                var wid = document.forms["Rectangle"]["width"];
                var nums = /^[0-9]+$/;
                    
                if (len == null || !((len.value.match(nums))))
                {
                    alert("A number must be entered in the length field.");
                    return false;
                }
                if (wid == null || !((wid.value.match(nums)))){
                    alert("A number must be entered in the width field.");
                    return false;
                }
                if (len.value <= 0 || len.value > 200){
                    alert("Please use a number between 1 and 200 for the length.");
                    return false;
                }
                if (wid.value <= 0 || wid.value > 200){
                    alert("Please use a number between 1 and 200 for the width.");
                    return false;
                }    
            }
        </script>
        <p>   
            <img src ="http://i428.photobucket.com/albums/qq3/gotnoshame/RectArea_zpsbc32e6e5.jpg"/>
            </br>
        <h2>Calculate the area of a rectangle</h2>
        <form name="Rectangle" action ="RectResultsServlet" method ="post"
              onsubmit="return validateRect()" >
            <input type ="text" name ="length"> Length</br>
            <input type ="text" name ="width"> Width</br>


            <input id="rectResultsSubmit" name="rectResultsSubmit" type="submit" 
                   value="Get Area">
        </form>
    </p>
    <p>
        <%--
              function validateCir  - Validates that data has been entered in the text
                                      boxes.  Returns false and gives an alert window 
                                      if invalid data is entered.
        --%>
        <script>
            function validateCirc(){
                var rad = document.forms["Circle"]["radius"];
                var nums = /^[0-9]+$/;
                    
                if (rad == null || !((rad.value.match(nums))))
                {
                    alert("A number must be entered in the radius field.");
                    return false;
                }
                if (rad.value <= 0 || rad.value > 200){
                    alert("Please use a number between 1 and 200 for the radius.");
                    return false;
                }
            }
        </script>
        <img src ="http://i428.photobucket.com/albums/qq3/gotnoshame/CirArea_zps41b55dec.jpg"/>
        </br>
    <h2>Calculate the area of a circle</h2>
    <form name ="Circle" action ="CircleResultsServlet" method ="post"
          onsubmit="return validateCirc()">
        <input type ="text" name ="radius"> Radius</br>    
        <input id="circleResultsSubmit" name="circleResultsSubmit" type="submit"
               value="Get Area">
    </form>
    </br>
    <%--
          function validateTri  - Validates that data has been entered in the text
                                  boxes.  Returns false and gives an alert window 
                                  if invalid data is entered.
    --%>
    <script>
        function validateTri(){
            var a = document.forms["Triangle"]["sideA"];
            var b = document.forms["Triangle"]["sideB"];
            var c = document.forms["Triangle"]["sideC"];
            var msgMoreThanOne = "More than one side doesn't have a number entered";
            var msgNeedsNum = "needs to be a number";
            var msgOutOfRange = "needs to be between 1-200";
            var nums = /^[0-9]+$/;
                    
            if (a == null || !((a.value.match(nums))))
            {
                if ((b == null || !((b.value.match(nums)))) ||
                    (c == null || !((c.value.match(nums)))))
                {
                    alert(msgMoreThanOne);
                    return false;
                }
            }
        }
    </script>
</p>
<p>   
    <img src ="http://i428.photobucket.com/albums/qq3/gotnoshame/RtTriArea_zps8c1578d1.jpg"/>
    </br>


<h2>Calculate the third side of a right triangle</h2>
<form name ="Triangle" action ="TriResultsServlet" method ="post"
      onsubmit ="return validateTri()">
    <input type ="text" name ="sideA"> Side a</br>
    <input type ="text" name ="sideB"> Side b</br>
    <input type ="text" name ="sideC"> Side c (hypotenuse)</br>    
    <input id="triResultsSubmit" name="triResultsSubmit" type="submit" 
           value="Get Third Side">
</form>
</br>
</p>    
</body>
</html>
