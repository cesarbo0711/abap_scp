@AbapCatalog.sqlViewName: 'ZV_REM_DAYSCB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Remaining days'

define view z_b_rem_days_cb
  as select from zrent_cars12
{

  key matricula as Matricula,
      marca     as marca,

      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats), alq_hasta)
        end     as Dias

}
