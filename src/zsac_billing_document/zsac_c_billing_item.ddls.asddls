@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing Document Item Projection'
@Metadata.allowExtensions: true
define view entity zsac_c_billing_item
  as projection on zsac_i_billing_item
{
  key bill_id,
  key item_no,
      material_id,
      description,
      quantity,
      item_amount,
      currency,
      uom,
      createdby,
      createdat,
      lastchangedby,
      lastchangedat,
      locallastchangedat,
      
      /* Associations */
      _BillingDocumentHeader : redirected to parent zsac_c_billing_header
}
