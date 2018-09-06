/*
create or replace procedure InsertarSala(
--Parametros
vTipoSala in Sala.TipoSala%TYPE,
vCapacidadSala in Sala.CapacidadSala%TYPE
) as
--Variables Locales
Begin
    insert into Sala (Id_Sala, TipoSala, CapacidadSala) 
           values(secuenciaSala.nextval, vTipoSala, vCapacidadSala);
    commit;
    dbms_output.put_line('Sala ingresada correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso de la Sala:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarSala;
*/
/*
create or replace procedure EliminarSala(
vId_Sala in Sala.Id_Sala%type
) as
begin
    delete Sala
    where Id_Sala=vId_Sala;
    dbms_output.put_line('Sala eliminada');
    commit;
end EliminarSala;
*/
/*
create or replace procedure ActualizarSala(
vId_Sala in Sala.Id_Sala%type,
vTipoSala in Sala.TipoSala%type,
vCapacidadSala in Sala.CapacidadSala%type
) as
begin
    update Sala
    set TipoSala=vTipoSala, 
        CapacidadSala=vCapacidadSala
    where Id_Sala=vId_Sala;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarSala;
*/