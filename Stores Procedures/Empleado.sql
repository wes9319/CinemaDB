/*
create or replace procedure InsertarEmpleado(
--Parametros
vId_PersonaNatural in Empleado.Id_PersonaNatural%TYPE,
vId_Subalterno in Empleado.Id_Subalterno%TYPE,
vFechaNacimientoEmpleado in Empleado.FechaNacimientoEmpleado%TYPE,
vFechaIngresoEmpleado in Empleado.FechaIngresoEmpleado%TYPE,
vFechaSalidaEmpleado in Empleado.FechaSalidaEmpleado%TYPE,
vTelefonoEmpleado in Empleado.TelefonoEmpleado%TYPE
) as
--Variables Locales
Begin
    insert into Empleado (Id_PersonaNatural, Id_Subalterno, FechaNacimientoEmpleado, FechaIngresoEmpleado,FechaSalidaEmpleado,TelefonoEmpleado) 
           values(vId_PersonaNatural, vId_Subalterno, vFechaNacimientoEmpleado, vFechaIngresoEmpleado, vFechaSalidaEmpleado, vTelefonoEmpleado);
    commit;
    dbms_output.put_line('Empleado ingresado correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso del empleado:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarEmpleado;
*/
/*
create or replace procedure EliminarEmpleado(
vId_PersonaNatural in Empleado.Id_PersonaNatural%type
) as
begin
    delete Empleado
    where Id_PersonaNatural=vId_PersonaNatural;
    dbms_output.put_line('Empleado eliminado');
    commit;
end EliminarEmpleado;
*/
/*
create or replace procedure ActualizarEmpleado(
vId_PersonaNatural in Empleado.Id_PersonaNatural%TYPE,
vId_Subalterno in Empleado.Id_Subalterno%TYPE,
vFechaNacimientoEmpleado in Empleado.FechaNacimientoEmpleado%TYPE,
vFechaIngresoEmpleado in Empleado.FechaIngresoEmpleado%TYPE,
vFechaSalidaEmpleado in Empleado.FechaSalidaEmpleado%TYPE,
vTelefonoEmpleado in Empleado.TelefonoEmpleado%TYPE
) as
begin
    update Empleado
    set Id_PersonaNatural=vId_PersonaNatural, 
        Id_Subalterno=vId_Subalterno,
        FechaNacimientoEmpleado=vFechaNacimientoEmpleado,
        FechaIngresoEmpleado=vFechaIngresoEmpleado,
        FechaSalidaEmpleado=vFechaSalidaEmpleado,
        TelefonoEmpleado=vTelefonoEmpleado
    where Id_PersonaNatural=vId_PersonaNatural;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarEmpleado;
*/