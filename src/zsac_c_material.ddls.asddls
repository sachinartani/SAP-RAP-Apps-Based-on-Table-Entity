@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection Material Entity'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity zsac_c_material
  provider contract transactional_query
  as projection on ZSAC_R_MATERIAL
{
  key material_no,
      material_desc,
      material_type,
      material_group
}
