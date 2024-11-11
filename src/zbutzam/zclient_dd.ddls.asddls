@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer Directory'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
define view entity ZCLIENT_DD as select from zclient
{
  key clnt1,
      @UI: { lineItem: [ { position: 10, label: 'Customer' } ] }
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.8
      @Semantics.text: true
      @Semantics.organization.name: true
      @EndUserText.label: 'Customer'
      clnt2,
      @UI: { lineItem: [ { position: 20, label: 'Delivery address - city' } ] }
      @EndUserText.label: 'Delivery address - city'
      adr1,
      @UI: { lineItem: [ { position: 30, label: 'Delivery address - street, house' } ] }
      @EndUserText.label: 'Delivery address - street, house'
      adr2,
      @UI: { lineItem: [ { position: 40, label: 'Incoterms1' } ] }
      @EndUserText.label: 'Incoterms1'
      inco1,
      @UI: { lineItem: [ { position: 50, label: 'Incoterms2' } ] }
      @EndUserText.label: 'Incoterms2'
      inco2,
      @UI: { lineItem: [ { position: 60, label: 'Payment term' } ] }
      @EndUserText.label: 'Payment term'
      pay1
}
