<%-- 
    Document   : index.jsp
    Created on : 29/03/2017, 12:58:37 PM
    Author     : Sistemas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Volumen de una Esfera</title>
    </head>
    <body>
        <h1>Volumen de una Esfera</h1>
        <form action="index.jsp" method="POST">
            <input type="text" name="cajaRadio" value="" /> 
            <input type="submit" value="Calcular" />
        </form>
           <%-- start web service invocation --%><hr/>
    <%
    try {
	esfera.VolumenEsfera_Service service = new esfera.VolumenEsfera_Service();
	esfera.VolumenEsfera port = service.getVolumenEsferaPort();
	 // TODO initialize WS operation arguments here
	java.lang.Double radio = Double.valueOf(request.getParameter("cajaRadio"));
        java.lang.Double result = port.volumen(radio);
        if(radio <= 0)
            out.println("El Radio no puede ser menor o igual que 0");
        else
	// TODO process result here
	// 
	out.println("El Volumen de la esfera es = "+ result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    <%-- end web service invocation --%><hr/>
        
    </body>
    
     

</html>
