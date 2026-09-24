@AbapCatalog.sqlViewName: 'ZRVG_V_CDS_I001'
@AbapCatalog.compiler.compareFilter: true
//@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Vista Articulos Arte'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view zrvg_cds_int_001 as select from zrvg_tab_art
{
    key client as client,
    key id_art as IdArt,
    descr as Descr,
    descr2 as Desc2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    // 0 Neutral grey
    // 1 negative red
    // 2 critical yellow
    // 3 positive green
    case
    when stock = 0 then 0
    when stock between 1  and 10 then 1
    when stock between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
}
