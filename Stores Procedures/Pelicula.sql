/*
create or replace procedure InsertarPelicula(
--Parametros
vCodigoPelicula in Pelicula.CodigoPelicula%TYPE,
vSinopsisPelicula in Pelicula.SinopsisPelicula%TYPE,
vNombrePelicula in Pelicula.NombrePelicula%TYPE,
vCalificacionPelicula in Pelicula.CalificacionPelicula%TYPE,
vActoresPelicula in Pelicula.ActoresPelicula%TYPE
) as
--Variables Locales
Begin
    insert into Pelicula (Id_Pelicula, CodigoPelicula, SinopsisPelicula, NombrePelicula, CalificacionPelicula, ActoresPelicula) 
           values(secuenciaPelicula.nextval, vCodigoPelicula, vSinopsisPelicula, vNombrePelicula, vCalificacionPelicula, vActoresPelicula);
    commit;
    dbms_output.put_line('Pelicula ingresada correctamente');
    exception
        when others then
            rollback;
            DBMS_OUTPUT.PUT_LINE('*****************************');
            DBMS_OUTPUT.PUT_LINE('Error en el Ingreso de la Pelicula:(');
            DBMS_OUTPUT.PUT_LINE('Error:'||SQLERRM);
            DBMS_OUTPUT.PUT_LINE('*****************************');
End InsertarPelicula;
*/
/*
create or replace procedure EliminarPelicula(
vId_Pelicula in Pelicula.Id_Pelicula%type
) as
begin
    delete Pelicula
    where Id_Pelicula=vId_Pelicula;
    dbms_output.put_line('Pelicula eliminada');
    commit;
end EliminarPelicula;
*/
/*
create or replace procedure ActualizarPelicula(
vId_Pelicula in Pelicula.Id_Pelicula%type,
vCodigoPelicula in Pelicula.CodigoPelicula%TYPE,
vSinopsisPelicula in Pelicula.SinopsisPelicula%TYPE,
vNombrePelicula in Pelicula.NombrePelicula%TYPE,
vCalificacionPelicula in Pelicula.CalificacionPelicula%TYPE,
vActoresPelicula in Pelicula.ActoresPelicula%TYPE
) as
begin
    update Pelicula
    set CodigoPelicula=vCodigoPelicula, 
        SinopsisPelicula=vSinopsisPelicula,
        NombrePelicula=vNombrePelicula,
        CalificacionPelicula=vCalificacionPelicula,
        ActoresPelicula=vActoresPelicula
    where Id_Pelicula=vId_Pelicula;
    commit;
    dbms_output.put_line('Datos Acatualizados Correctamente');
end ActualizarPelicula;
*/