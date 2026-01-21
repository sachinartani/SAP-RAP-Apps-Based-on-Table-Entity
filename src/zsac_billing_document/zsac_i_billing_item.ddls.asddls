@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing Document Item'
define table entity zsac_i_billing_item
{
  key bill_id            : zsac_st_bill_id;
  key item_no            : zsac_st_bill_item_no;
      material_id        : matnr;
      description        : abap.char(40);
      @Semantics.quantity.unitOfMeasure : 'uom'
      quantity           : abap.quan(13,3);
      @Semantics.amount.currencyCode : 'currency'
      item_amount        : abap.curr(15,2);
      currency           : waers;
      uom                : meins;
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
      
      _BillingDocumentHeader : association to parent zsac_r_billing_header on _BillingDocumentHeader.bill_id = $projection.bill_id;
      

}
