/*
create or replace procedure InsertarCliente(
--Parametros
vId_PersonaNatural in PersonaNatural.Id_PersonaNatural%TYPE,
vDireccionCliente in Cliente.DireccionCliente%TYPE,
vTelefonoCliente in Cliente.TelefonoCliente%TYPE
) as
--Variables Locales
Begin
    insert into Cliente (Id_PersonaNatural, DireccionCliente, TelefonoCliente) 
           values(vId_PersonaNatural, vDireccionCliente, vTelefonoCliente);
    commit;
    dbms_output.put_line('Cliente ingresado correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso del Cliente:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarCliente;
*/
/*
create or replace procedure EliminarCliente(
vId_PersonaNatural in Cliente.Id_PersonaNatural%type
) as
begin
    delete Cliente
    where Id_PersonaNatural=vId_PersonaNatural;
    dbms_output.put_line('Cliente eliminado');
    commit;
end EliminarCliente;
*/
/*
create or replace procedure ActualizarCliente(
vId_PersonaNatural in PersonaNatural.Id_PersonaNatural%TYPE,
vDireccionCliente in Cliente.DireccionCliente%TYPE,
vTelefonoCliente in Cliente.TelefonoCliente%TYPE
) as
begin
    update Cliente
    set Id_PersonaNatural=vId_PersonaNatural, 
        DireccionCliente=vDireccionCliente,
        TelefonoCliente=vTelefonoCliente
    where Id_PersonaNatural=vId_PersonaNatural;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarCliente;
*/