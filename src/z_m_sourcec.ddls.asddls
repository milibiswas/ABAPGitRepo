@AbapCatalog.sqlViewName: 'ZMSOURCEC'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'source C'
define view Z_M_SourceC as select from t000 {
    key cast('C' as abap.char(2)) as FieldC1,
        cast('C2' as abap.char(2)) as FieldC2
}
