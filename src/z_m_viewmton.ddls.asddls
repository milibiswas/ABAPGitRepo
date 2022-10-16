@AbapCatalog.sqlViewName: 'ZMVIEWMTON'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'view MToN'
define view Z_M_ViewMToN 
as select distinct from t000 
association [0..1]  to Z_M_ViewA as _ViewA
on $projection.KeyFieldA=_ViewA.KeyFieldA

association [0..1]  to Z_M_ViewB as _ViewB
on $projection.KeyFieldB=_ViewB.KeyFieldB
{

key 1 as KeyFieldA,
key 3 as KeyFieldB,
_ViewA,
_ViewB
    
}

union 
select distinct from t000
association [0..1]  to Z_M_ViewA as _ViewA
on $projection.KeyFieldA=_ViewA.KeyFieldA

association [0..1]  to Z_M_ViewB as _ViewB
on $projection.KeyFieldB=_ViewB.KeyFieldB
 {

key 2 as KeyFieldA,
key 4  as KeyFieldB,
_ViewA,
_ViewB
       
}
union
select distinct from t000
association [0..1]  to Z_M_ViewA as _ViewA
on $projection.KeyFieldA=_ViewA.KeyFieldA

association [0..1]  to Z_M_ViewB as _ViewB
on $projection.KeyFieldB=_ViewB.KeyFieldB
 {

key 1 as KeyFieldA,
key 4 as KeyFieldB,
_ViewA,
_ViewB    
}
