@ClientHandling.type: #CLIENT_DEPENDENT
@AbapCatalog.deliveryClass: #APPLICATION_DATA
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Root Material Entity'
define root table entity ZSAC_R_MATERIAL
{
      @EndUserText.label: 'Material Number'
  key material_no    : matnr;
      @EndUserText.label: 'Material Description'
      material_desc  : matkl;
      @EndUserText.label: 'Material Type'
      material_type  : abap.char(4);
      @EndUserText.label: 'Material Group'
      material_group : abap.char(40);
}
