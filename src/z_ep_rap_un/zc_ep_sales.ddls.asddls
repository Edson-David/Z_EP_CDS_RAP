@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Sales Consuption'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_EP_SALES
  as projection on ZI_EP_SALES
{
  key Orderid,
      Customer,
      Vendor,
      Company
}
