/*
create or replace procedure InsertarBoleto(
--Parametros
vId_Factura in Boleto.Id_Factura%TYPE,
vId_Pelicula in Boleto.Id_Pelicula%TYPE,
vCodigoBoleto in Boleto.CodigoBoleto%TYPE,
vNumeroAsientoBoleto in Boleto.NumeroAsientoBoleto%TYPE,
vSucursalBoleto in Boleto.SucursalBoleto%TYPE,
vTipoBoleto in Boleto.TipoBoleto%TYPE,
vFechaBoleto in Boleto.FechaBoleto%TYPE
) as
--Variables Locales
Begin
    insert into Boleto (Id_Boleto, Id_Factura, Id_Pelicula, CodigoBoleto, NumeroAsientoBoleto, SucursalBoleto, TipoBoleto, FechaBoleto) 
           values(secuenciaBoleto.nextval, vId_Factura, vId_Pelicula, vCodigoBoleto, vNumeroAsientoBoleto, vSucursalBoleto, vTipoBoleto, vFechaBoleto);
    commit;
    dbms_output.put_line('Boleto ingresado correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso del Boleto:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarBoleto;
*/
/*
create or replace procedure EliminarBoleto(
vId_Boleto in Boleto.Id_Boleto%type
) as
begin
    delete Boleto
    where Id_Boleto=vId_Boleto;
    dbms_output.put_line('Boleto eliminado');
    commit;
end EliminarBoleto;
*/
/*
create or replace procedure ActualizarBoleto(
vId_Boleto in Boleto.Id_Boleto%type,
vId_Factura in Boleto.Id_Factura%TYPE,
vId_Pelicula in Boleto.Id_Pelicula%TYPE,
vCodigoBoleto in Boleto.CodigoBoleto%TYPE,
vNumeroAsientoBoleto in Boleto.NumeroAsientoBoleto%TYPE,
vSucursalBoleto in Boleto.SucursalBoleto%TYPE,
vTipoBoleto in Boleto.TipoBoleto%TYPE,
vFechaBoleto in Boleto.FechaBoleto%TYPE
) as
begin
    update Boleto
    set Id_Factura=vId_Factura, 
        Id_Pelicula=vId_Pelicula,
        CodigoBoleto=vCodigoBoleto,
        NumeroAsientoBoleto=vNumeroAsientoBoleto,
        SucursalBoleto=vSucursalBoleto,
        TipoBoleto=vTipoBoleto,
        FechaBoleto=vFechaBoleto
    where Id_Boleto=vId_Boleto;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarBoleto;
*/