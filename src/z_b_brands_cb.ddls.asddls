@AbapCatalog.sqlViewName: 'ZV_BRANDSL'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'

define view z_b_brands_cb 
  as select from zrent_brands12
{
   key marca as Marca,
   @UI.hidden: true
   url as Imagen
   
}
