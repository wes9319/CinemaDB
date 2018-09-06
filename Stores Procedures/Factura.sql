/*
create or replace procedure InsertarFactura(
--Parametros
vId_PersonaNatural in PersonaNatural.Id_PersonaNatural%TYPE,
vNumeroFactura in Factura.NumeroFactura%TYPE,
vSubtotalFactura in Factura.SubtotalFactura%TYPE,
vFechaFactura in Factura.FechaFactura%TYPE
) as
--Variables Locales
vCalculoIVA DECIMAL(16,4);
vTotal DECIMAL(16,4);
Begin
    vCalculoIVA := (vSubtotalFactura * 0.12);
    vTotal := (vSubtotalFactura + vCalculoIVA);
    insert into Factura (Id_Factura, Id_PersonaNatural, NumeroFactura, SubtotalFactura, IvaFactura, TotalFactura, FechaFactura) 
           values(secuenciaFactura.nextval, vId_PersonaNatural, vNumeroFactura, vSubtotalFactura, vCalculoIVA, vTotal, vFechaFactura);
    commit;
    dbms_output.put_line('Factura ingresada correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso de la Factura:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarFactura;
*/
/*
create or replace procedure EliminarFactura(
vId_Factura in Factura.Id_Factura%type
) as
begin
    delete Factura
    where Id_Factura=vId_Factura;
    dbms_output.put_line('Factura eliminada');
    commit;
end EliminarFactura;
*/
/*
create or replace procedure ActualizarFactura(
vId_Factura in Factura.Id_Factura%TYPE,
vId_PersonaNatural in PersonaNatural.Id_PersonaNatural%TYPE,
vNumeroFactura in Factura.NumeroFactura%TYPE,
vSubtotalFactura in Factura.SubtotalFactura%TYPE,
vFechaFactura in Factura.FechaFactura%TYPE
) as
vCalculoIVA DECIMAL(16,4);
vTotal DECIMAL(16,4);
begin
    vCalculoIVA := (vSubtotalFactura * 0.12);
    vTotal := (vSubtotalFactura + vCalculoIVA);
    update Factura
    set Id_PersonaNatural=vId_PersonaNatural, 
        NumeroFactura=vNumeroFactura,
        SubtotalFactura=vSubtotalFactura,
        IvaFactura=vCalculoIVA,
        TotalFactura=vTotal,
        FechaFactura=vFechaFactura
    where Id_Factura=vId_Factura;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarFactura;
*/