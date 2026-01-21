@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Billing Document Header Projection'
@Metadata.allowExtensions: true
define root view entity zsac_c_billing_header
  provider contract transactional_query
  as projection on zsac_r_billing_header
{
  key bill_id,
      bill_type,
      bill_date,
      customer_id,
      net_amount,
      currency,
      sales_org,
      createdby,
      createdat,
      lastchangedby,
      lastchangedat,
      locallastchangedat,

      _BillingDocumentItem: redirected to composition child zsac_c_billing_item
}
