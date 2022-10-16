@AbapCatalog.sqlViewName: 'ZMVBAK'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'vbak'
define view Z_M_Vbak as select from vbak {
    vbeln as SalesOrder,
    case when auart = 'ZA01' then 'X'
         when auart = 'OAF' then 'X'
         else ' '
    end as SalesOrderType,
    auart as OldSalesOrderType
}
