/*
create or replace procedure InsertarProveedor(
--Parametros
vNombreProveedor in Proveedor.NombreProveedor%TYPE,
vCodigoProveedor in Proveedor.CodigoProveedor%TYPE,
vRucProveedor in Proveedor.RucProveedor%TYPE
) as
--Variables Locales
Begin
    insert into Proveedor (Id_Proveedor, NombreProveedor, CodigoProveedor, RucProveedor) 
           values(secuenciaProveedor.nextval, vNombreProveedor, vCodigoProveedor, vRucProveedor);
    commit;
    dbms_output.put_line('Proveedor ingresado correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso del Proveedor:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarProveedor;
*/
/*
create or replace procedure EliminarProveedor(
vId_Proveedor in Proveedor.Id_Proveedor%type
) as
begin
    delete Proveedor
    where Id_Proveedor=vId_Proveedor;
    dbms_output.put_line('Proveedor eliminado');
    commit;
end EliminarProveedor;
*/
/*
create or replace procedure ActualizarProveedor(
vId_Proveedor in Proveedor.Id_Proveedor%type,
vNombreProveedor in Proveedor.NombreProveedor%TYPE,
vCodigoProveedor in Proveedor.CodigoProveedor%TYPE,
vRucProveedor in Proveedor.RucProveedor%TYPE
) as
begin
    update Proveedor
    set NombreProveedor=vNombreProveedor, 
        CodigoProveedor=vCodigoProveedor,
        RucProveedor=vRucProveedor
    where Id_Proveedor=vId_Proveedor;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarProveedor;
*/