@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZCURRC_DD'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@ObjectModel.resultSet.sizeCategory: #XS
define view entity ZCURRC_DD as select from zcurrc
{
    @UI: { lineItem: [ { position: 10, label: 'Course number' } ] }
    key currc,
    @UI: { lineItem: [ { position: 20, label: 'Course description' } ] }
    descr   
}
