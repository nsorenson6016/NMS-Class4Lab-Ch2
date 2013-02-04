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

                        Invalid data includes: empty length or width boxes,
                        any number outside the range of 1-200, or any non-number 
--%>
        <script>
            function validateRect(){
                var len = document.forms["Rectangle"]["length"].value;
                var wid = document.forms["Rectangle"]["width"].value;
                var msgEnterNum = "A number must be entered in the "
                var msgNumRangeError = "Please use a number between 1-200 for "
                var nums = /^[0-9]+$/;
                    
                if (len == null || len=="" || !(len.match(nums)))
                {
                    alert(msgEnterNum +  "the length field.");
                    return false;
                }
                if (wid == null || wid=="" || !(wid.match(nums)))
                {
                    alert(msgEnterNum + "the width field.");
                    return false;
                }
                if (len <= 0 || len > 200){
                    alert(msgNumRangeError + "the length.");
                    return false;
                }
                if (wid <= 0 || wid > 200){
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
function validateCir  - Validates that data has been entered in the text boxes.
                        Returns false and gives an alert window if invalid data 
                        is entered.

                        Invalid data includes: empty radius box, any non-number 
                        or number outside the range of 1-200.
--%>
        <script>
            function validateCirc(){
                var rad = document.forms["Circle"]["radius"].value;
                var nums = /^[0-9]+$/;
                    
                if (rad == null || rad=="" || !(rad.match(nums)))
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
function validateTri  - Validates that data has been entered in the text boxes
                        Returns false and gives an alert window if invalid data 
                        is entered.

                        Invalid data includes: more than one side left blank,
                        all three sides entered, or any non-number or any number 
                        outside the range of 1-200.
--%>
    <script>
        function validateTri() {
            var a = document.forms["Triangle"]["sideA"].value;
            var b = document.forms["Triangle"]["sideB"].value;
            var c = document.forms["Triangle"]["sideC"].value;
            var msgMoreThanOne = "Please enter a number for two sides.";
            var msgAllSides = "All sides entered. Please remove one side's value.";
            var msgNeedsNum = "needs to be a number";
            var msgOutOfRange = "needs to be between 1-200";
            var nums = /^[0-9]+$/;
                        
            if (a==""){
                alert(msgMoreThanOne);
                return false;
            }
            if (!(a.value.match(nums))){
                alert("Side A " + msgNeedsNum);
                return false;
            }
            else if (b.value.match(nums)){
                alert("Side B " + msgNeedsNum);
                return false;
            }
            else if (c.value.match(nums)){
                alert("Side C " + msgNeedsNum);
                return false;
            }
            else if (a.value <= 0 || a.value >200){
                alert("Side A" + msgOutOfRange);
                return false;
            }
            else if (b.value <= 0 || b.value >200){
                alert("Side B" + msgOutOfRange);
                return false;
            }
            else if (c.value <= 0 || c.value >200){
                alert("Side C" + msgOutOfRange);
                return false;
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
