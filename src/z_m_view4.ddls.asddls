@AbapCatalog.sqlViewName: 'ZMVIEW4'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View4'
@OData.publish: true
define view Z_M_View4 as select from vbak
association [0..*] to vbap as _vbap
on $projection.Vbeln = _vbap.vbeln
 {
   key vbeln as Vbeln,
   erdat as Erdat,
   _vbap,
   _vbap.posnr
   
}
