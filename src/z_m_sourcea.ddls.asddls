@AbapCatalog.sqlViewName: 'ZMSOURCEA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'source A'
define view Z_M_SourceA as select from t000
  association [0..1] to Z_M_SourceC as _ViewC
  on $projection.FieldA3 = _ViewC.FieldC1
 {       
   key cast('A' as abap.char( 1 )) as FieldA1,
   cast('B' as abap.char(1)) as FieldA2,
   cast('C'as abap.char( 2 )) as FieldA3,
   _ViewC
}
