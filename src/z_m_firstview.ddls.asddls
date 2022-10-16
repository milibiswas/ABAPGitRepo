@AbapCatalog.sqlViewName: 'ZFIRSTVIEW'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'first view'
define view Z_M_FirstView as select from t000 {
    logsys as ProjectedField,
    '20221209' as CharacterField,
    cast('20221209' as abap.dats) as DateField
}
