<%-- 
    Document   : index
    Created on : Jul 11, 2020, 5:39:45 PM
    Author     : mesa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <%
            if (request.getParameter("country") !=null) {
                java.util.HashMap<String, String> arr = new java.util.HashMap<String, String>();
                arr.put("England", "London");
                arr.put("France", "Paris");
                arr.put("Spain", "Madrid");
                arr.put("Alaska", "Juneanu");
                out.print(arr.get(request.getParameter("country")));
                return;
            }
            %>
        <script type="text/javascript">
            
            function ajax(country){
                var xmlHttp = new XMLHttpRequest();
                
                xmlHttp.onreadystatechange = function()
                {
                    if(xmlHttp.readyState == 4){
                        document.getElementById("capital").innerHTML=xmlHttp.responseText;
                    }
                }
                
                xmlHttp.open("GET", "index.jsp?country=" + country, true);
                xmlHttp.send(null);
            }
            
        </script>
    </head>
    <body>
        <select onchange="ajax(this.options[this.selectedIndex].value)">
            <option>Select country:</option>
            <option value="England">England</option>
            <option value="France">France</option>
            <option value="Spain">Spain</option>
            <option value="Alaska">Alaska</option>
        </select>
        </br>
        Capital: <div id="capital"></div>
    </body>
</html>
