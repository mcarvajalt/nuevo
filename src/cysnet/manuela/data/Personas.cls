Class cysnet.manuela.data.Personas Extends %Persistent
{

Property nombre As %String;

Property apellidos As %String;

Property direccion As %String;

Property codPostal As %Integer;

Storage Default
{
<Data name="PersonasDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>nombre</Value>
</Value>
<Value name="3">
<Value>apellidos</Value>
</Value>
<Value name="4">
<Value>direccion</Value>
</Value>
<Value name="5">
<Value>codPostal</Value>
</Value>
</Data>
<DataLocation>^cysnet.manuela.data.PersonasD</DataLocation>
<DefaultData>PersonasDefaultData</DefaultData>
<IdLocation>^cysnet.manuela.data.PersonasD</IdLocation>
<IndexLocation>^cysnet.manuela.data.PersonasI</IndexLocation>
<StreamLocation>^cysnet.manuela.data.PersonasS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
