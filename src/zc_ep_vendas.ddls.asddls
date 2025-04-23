@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Consumo app vendas'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_EP_VENDAS
  as projection on ZI_EP_VENDAS
{
  key VendaId,
      DataVenda,
      Vendedor,
      /* Associations */
      _Item
}
