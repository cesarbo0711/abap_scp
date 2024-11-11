@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Detail Customers'
@Metadata.allowExtensions: true

define view z_b_det_custome_cb
  as select from zrent_customerss
{

  key doc_id       as Id,
  key matricula    as Matricula,
      fecha_inicio as FechaInicio,
      fecha_fin    as FechaFin,
      nombres      as Nombre,
      apellidos    as Apellidos,
      email        as Correo,
      cntr_type    as CntrType
}
