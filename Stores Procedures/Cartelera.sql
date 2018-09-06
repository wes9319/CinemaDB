/*
create or replace procedure InsertarCartelera(
--Parametros
vSucursalCartelera in Cartelera.SucursalCartelera%TYPE
) as
--Variables Locales
Begin
    insert into Cartelera (Id_Cartelera, SucursalCartelera) 
           values(secuenciaCartelera.nextval, vSucursalCartelera);
    commit;
    dbms_output.put_line('Cartelera ingresada correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso de la Cartelera:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarCartelera;
*/
/*
create or replace procedure EliminarCartelera(
vId_Cartelera in Cartelera.Id_Cartelera%type
) as
begin
    delete Cartelera
    where Id_Cartelera=vId_Cartelera;
    dbms_output.put_line('Cartelera eliminada');
    commit;
end EliminarCartelera;
*/

create or replace procedure ActualizarCartelera(
vId_Cartelera in Cartelera.Id_Cartelera%type,
vSucursalCartelera in Cartelera.SucursalCartelera%type
) as
begin
    update Cartelera
    set SucursalCartelera=vSucursalCartelera
    where Id_Cartelera=vId_Cartelera;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarCartelera;
