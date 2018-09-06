/*
create or replace procedure InsertarPersonaNatural(
--Parametros
vNombrePersonaNatural in PersonaNatural.NombrePersonaNatural%TYPE,
vNombre2PersonaNatural in PersonaNatural.Nombre2PersonaNatural%TYPE,
vApellidoPersonaNatural in PersonaNatural.ApellidoPersonaNatural%TYPE,
vApellido2PersonaNatural in PersonaNatural.Apellido2PersonaNatural%TYPE,
vCIRucPersonaNatural in PersonaNatural.CIRucPersonaNatural%TYPE
) as
--Variables Locales
Begin
    insert into PersonaNatural (Id_PersonaNatural, NombrePersonaNatural, Nombre2PersonaNatural, ApellidoPersonaNatural,Apellido2PersonaNatural,CIRucPersonaNatural) 
           values(secuenciaPersonaNatural.nextval, vNombrePersonaNatural, vNombre2PersonaNatural, vApellidoPersonaNatural, vApellido2PersonaNatural, vCIRucPersonaNatural);
    commit;
    dbms_output.put_line('Persona Natural ingresada correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso de la Persona Natural:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarPersonaNatural;
*/
/*
create or replace procedure EliminarPersonaNatural(
vId_PersonaNatural in PersonaNatural.Id_PersonaNatural%type
) as
begin
    delete PersonaNatural
    where Id_PersonaNatural=vId_PersonaNatural;
    dbms_output.put_line('PersonaNatural eliminado');
    commit;
end EliminarPersonaNatural;
*/
/*
create or replace procedure ActualizarPersonaNatural(
vId_PersonaNatural in PersonaNatural.Id_PersonaNatural%type,
vNombrePersonaNatural in PersonaNatural.NombrePersonaNatural%type,
vNombre2PersonaNatural in PersonaNatural.Nombre2PersonaNatural%TYPE,
vApellidoPersonaNatural in PersonaNatural.ApellidoPersonaNatural%TYPE,
vApellido2PersonaNatural in PersonaNatural.Apellido2PersonaNatural%TYPE,
vCIRucPersonaNatural in PersonaNatural.CIRucPersonaNatural%TYPE
) as
begin
    update PersonaNatural
    set NombrePersonaNatural=vNombrePersonaNatural, 
        Nombre2PersonaNatural=vNombre2PersonaNatural,
        ApellidoPersonaNatural=vApellidoPersonaNatural,
        Apellido2PersonaNatural=vApellido2PersonaNatural,
        CIRucPersonaNatural=vCIRucPersonaNatural
    where Id_PersonaNatural=vId_PersonaNatural;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarPersonaNatural;
*/