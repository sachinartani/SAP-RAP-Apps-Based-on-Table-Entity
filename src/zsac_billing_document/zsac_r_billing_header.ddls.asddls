@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing Document Header'
define root table entity zsac_r_billing_header
{
  key bill_id            : abap.numc(10);
      bill_type          : abap.char(4);
      bill_date          : zsac_st_bill_date;
      customer_id        : kunnr;
      @Semantics.amount.currencyCode : 'currency'
      net_amount         : zsac_st_net_amount;
      currency           : waers;
      sales_org          : vkorg;
      @Semantics.user.createdBy: true
      createdby          : syuname;
      @Semantics.systemDateTime.createdAt: true
      createdat          : timestamp;
      @Semantics.user.lastChangedBy: true
      lastchangedby      : syuname;
      @Semantics.systemDateTime.lastChangedAt: true
      lastchangedat      : timestamp;
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      locallastchangedat : timestamp;
      
      _BillingDocumentItem : composition of exact one to many zsac_i_billing_item;

}
