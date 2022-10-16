@AbapCatalog.sqlViewName: 'ZMVIEWB'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'View B'
define view Z_M_ViewB as select distinct from t000
association [0..*] to Z_M_ViewMToN as _ViewMToN
on $projection.KeyFieldB=_ViewMToN.KeyFieldB 

{
    key 2 as KeyFieldB,
    _ViewMToN
}

union 
    select distinct from t000
association [0..*] to Z_M_ViewMToN as _ViewMToN
on $projection.KeyFieldB=_ViewMToN.KeyFieldB
 {
    key 4 as KeyFieldB,
    _ViewMToN
 }
 
union 
    select distinct from t000
association [0..*] to Z_M_ViewMToN as _ViewMToN
on $projection.KeyFieldB=_ViewMToN.KeyFieldB
 {
    key 3 as KeyFieldB,
    _ViewMToN
 }
