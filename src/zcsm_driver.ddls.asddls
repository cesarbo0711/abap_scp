@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS ZTSM_DRIVER'
@Metadata.allowExtensions: true
define root view entity ZCSM_DRIVER as select from ztsm_driver
{
@EndUserText.label: 'Driver Id'
 key driver_id as driver_id,
 @EndUserText.label: 'First Name'
     driver_fname as driver_fname,
 @EndUserText.label: 'Last Name'
     driver_lname as driver_lname,
 @EndUserText.label:   'Nationality'    
     driver_nationality as driver_nation,
 @EndUserText.label: 'Date Of Birth'    
     driver_dob as driver_dob,
 @EndUserText.label: 'Mobile'    
     driver_mob as driver_mob
   
}
