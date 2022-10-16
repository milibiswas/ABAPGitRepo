@AbapCatalog.sqlViewName: 'ZMVIEWA'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view A'
define view Z_M_ViewA as select distinct from t000 
association [0..*] to Z_M_ViewMToN as _ViewMToN
on $projection.KeyFieldA=_ViewMToN.KeyFieldA
{
    key 1 as KeyFieldA,
    _ViewMToN
    
}

union

select distinct from t000 
association [0..*] to Z_M_ViewMToN as _ViewMToN
on $projection.KeyFieldA=_ViewMToN.KeyFieldA
{
    key 2 as KeyFieldA,
    _ViewMToN
}
