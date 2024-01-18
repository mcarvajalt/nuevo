Class cysnet.manuela.bo.DBCache Extends Ens.BusinessOperation
{

Method obtenerPersona(pRequest As cysnet.manuela.msg.ObtenerPersonaRequest, Output pResponse As cysnet.manuela.msg.ObtenerPersonaResponse) As %Status
{
    set pResponse = ##class(cysnet.manuela.msg.ObtenerPersonaResponse).%New()

    set stm = ##class(%SQL.Statement).%New()
    do stm.%Prepare("SELECT nombre, apellidos, direccion, codPostal FROM cysnet_manuela_data.Personas WHERE ID = "_pRequest.idPersona)

    set rs = stm.%Execute()

    if (rs.%Next()) {
        set pResponse.nombre = rs.nombre
        set pResponse.apellidos = rs.apellidos
        set pResponse.direccion = rs.direccion
        set pResponse.codPostal = rs.codPostal
    }else{
        set pResponse.mensaje = "No existe la persona"  
    }
    
    quit pResponse
}

}
