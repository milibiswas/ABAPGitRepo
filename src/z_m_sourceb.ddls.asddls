@AbapCatalog.sqlViewName: 'ZMSOURCEB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Source B'
define view Z_M_SourceB as select from t000 {
    cast('B_X' as abap.char(3)) as FieldB1,
    cast('X' as abap.char(1)) as FieldB2
}
