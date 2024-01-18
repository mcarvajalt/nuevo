Class cysnet.manuela.ws.Servicio Extends EnsLib.SOAP.Service [ ProcedureBlock ]
{

/// Nombre de servicio web.
Parameter SERVICENAME = "Servicio";

/// Namespace SOAP para servicio web
Parameter NAMESPACE = "NUEVO";

/// Se utilizarán namespaces de clases referenciadas en WSDL.
Parameter USECLASSNAMESPACES = 1;

Method saludo() As %String [ WebMethod ]
{
	Quit "Hola Mundo!"
}

}
