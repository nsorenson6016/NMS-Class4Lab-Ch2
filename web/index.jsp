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
        <script type="text/javascript">
            function validateRect(){
                var len = document.getElementById("length");
                var wid = document.getElementById("width");
                var msgEnterNum = "A number must be entered in the ";
                var msgNumRangeError = "Please use a number between 1-200 for ";
                var lengthField = "length field.";
                var widthField = "width field.";
                var nums = /^[0-9]+$/;
                    
                if (!len.value.match(nums)){
                    alert(msgEnterNum + lengthField);
                    return false;
                }
                if (!wid.value.match(nums)){
                    alert(msgEnterNum + widthField);
                    return false;
                }
                if (len.value <= 0 || len.value >200){
                    alert(msgNumRangeError + lengthField);
                    return false;
                }
                if (wid.value <= 0 || wid.value >200){
                    alert(msgNumRangeError + widthField);
                    return false;
                }
                
                return true;
            }
        </script>
        <p>   
            <img src ="http://i428.photobucket.com/albums/qq3/gotnoshame/RectArea_zpsbc32e6e5.jpg"/>
            </br>
        <h2>Calculate the area of a rectangle</h2>
        <form id="Rectangle" name="Rectangle" action ="RectResultsServlet" method ="post"
              onsubmit="return validateRect()" >
            <input id="length" type ="text" name ="length"> Length</br>
            <input id="width" type ="text" name ="width"> Width</br>

            <input id="rectResultsSubmit" name="rectResultsSubmit" type="submit" 
                   value="Get Area">
        </form>
        <p>Answer: 
            <%
                Object recObj = request.getAttribute("recAnswer");
                String answer = "";
                if (recObj != null) {
                    answer = recObj.toString();
                }
                out.print(answer);
            %>
        <p>
        <hr>
<%--
        function validateCir  - Validates that data has been entered in the text boxes.
                                Returns false and gives an alert window if invalid data 
                                is entered.

                        Invalid data includes: empty radius box, any non-number 
                        or number outside the range of 1-200.
--%>
        <script type="text/javascript">
            function validateCirc(){
                var rad = document.getElementById("rad");
                var nums = /^[0-9]+$/;
                var msgEnterNumInRad = "A number must be entered in the radius field";
                var msgOutOfRange = "Radius must be between 1-200";
                    
                if (!rad.value.match(nums)){
                    alert(msgEnterNumInRad);
                    return false;
                }
                if (rad.value <= 0 || rad.value >200){
                    alert(msgOutOfRange);
                    return false;
                }
                
                return true;
            }
        </script>
        <img src ="http://i428.photobucket.com/albums/qq3/gotnoshame/CirArea_zps41b55dec.jpg"/>
        </br>
        
    <h2>Calculate the area of a circle</h2>
    <form id ="Circle" name ="Circle" action ="CircleResultsServlet" method ="post"
          onsubmit="return validateCirc()">
        <input id="rad" type ="text" name ="radius"> Radius</br>    
        <input  name="circleResultsSubmit" type="submit"
               value="Get Area">
    </form>
    </br>
                <p>Answer: 
            <%
                Object cirObj = request.getAttribute("circAnswer");
                String cirAnswer = "";
                if(cirObj != null) {
                    cirAnswer = cirObj.toString();
                }
                out.print(cirAnswer);
            %>
    <p>
    <hr>
        <%--
        function validateTri  - Validates that data has been entered in the text boxes
                                Returns false and gives an alert window if invalid data 
                                is entered.

                        Invalid data includes: more than one side left blank,
                        all three sides entered, or any non-number or any number 
                        outside the range of 1-200.
        --%>

          <script type="text/javascript">
              function validateTri() {
                  var a = document.getElementById("sideA");
                  var b = document.getElementById("sideB");
                  var c = document.getElementById("sideC");
                  var msgMoreThanOne = "Please enter a number for two sides.";
                  var msgAllSides = "All sides entered. Please remove one side's value.";
                  var msgNeedsNum = "needs to be a number";
                  var msgOutOfRange = "needs to be between 1-200";
                  var nums = /^[0-9]+$/;
                          
                  // First check that at least two sides hava values
                  if (!a.value.match(nums) && !b.value.match(nums) && !c.value.match(nums)){
                      alert(msgMoreThanOne);
                      return false;
                  }
                  if (a.value.match(nums) && !b.value.match(nums) && !c.value.match(nums)){
                      alert(msgMoreThanOne);
                      return false;
                  }
                  if (!a.value.match(nums) && b.value.match(nums) && !c.value.match(nums)){
                      alert(msgMoreThanOne);
                      return false;
                  }
                   if (!a.value.match(nums) && !b.value.match(nums) && c.value.match(nums)){
                      alert(msgMoreThanOne);
                      return false;
                  }
                  
                  // Now check if values are within range
                  if (a.value.match(nums) && b.value.match(nums) && c.value===""){
                      if (a.value <= 0 || a.value >200){
                          alert("Side A" + msgOutOfRange);
                          return false;
                      }
                      else if (b.value <= 0 || b.value >200){
                          alert("Side B" + msgOutOfRange);
                          return false;
                      }                
                  }
                  
                  if (a.value==="" && b.value.match(nums) && c.value.match(nums)){
                      if (b.value <= 0 || b.value >200){
                          alert("Side B" + msgOutOfRange);
                          return false;
                      }
                      else if (c.value <= 0 || c.value >200){
                          alert("Side C" + msgOutOfRange);
                          return false;
                      }                
                  }
                  
                  if (a.value.match(nums) && b.value==="" && c.value.match(nums)){
                      if (a.value <= 0 || a.value >200){
                          alert("Side A" + msgOutOfRange);
                          return false;
                      }
                      else if (c.value <= 0 || c.value >200){
                          alert("Side C" + msgOutOfRange);
                          return false;
                      }                
                  }
                  
                  return true;
       
               }
          </script>
      </p>
      <p>   
          <img src ="http://i428.photobucket.com/albums/qq3/gotnoshame/RtTriArea_zps8c1578d1.jpg"/>
          </br>


<h2>Calculate the third side of a right triangle</h2>
<form name ="Triangle" action ="TriResultsServlet" method ="post"
      onsubmit ="return validateTri()">
    <input id ="sideA" type ="text" name ="sideA"> Side a</br>
    <input id ="sideB" type ="text" name ="sideB"> Side b</br>
    <input id ="sideC" type ="text" name ="sideC"> Side c (hypotenuse)</br>    
    <input id="triResultsSubmit" name="triResultsSubmit" type="submit" 
           value="Get Third Side">
</form>        
<p> Answer: 

            <%
                Object triObj = request.getAttribute("triAnswer");
                String triAnswer = "";
                if(triObj != null) {
                    triAnswer = triObj.toString();
                }
                out.print(triAnswer);
            %>
        </br>

    </p>    
</body>
</html>
