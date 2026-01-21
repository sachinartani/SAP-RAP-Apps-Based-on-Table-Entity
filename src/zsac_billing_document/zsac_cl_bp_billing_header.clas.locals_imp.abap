CLASS lhc_zsac_r_billing_header DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR zsac_r_billing_header RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR zsac_r_billing_header RESULT result.

    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE zsac_r_billing_header.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zsac_r_billing_header.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zsac_r_billing_header.

    METHODS read FOR READ
      IMPORTING keys FOR READ zsac_r_billing_header RESULT result.

    METHODS lock FOR LOCK
      IMPORTING keys FOR LOCK zsac_r_billing_header.

    METHODS rba_Billingdocumentitem FOR READ
      IMPORTING keys_rba FOR READ zsac_r_billing_header\_Billingdocumentitem FULL result_requested RESULT result LINK association_links.

    METHODS cba_Billingdocumentitem FOR MODIFY
      IMPORTING entities_cba FOR CREATE zsac_r_billing_header\_Billingdocumentitem.

ENDCLASS.

CLASS lhc_zsac_r_billing_header IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD create.
  ENDMETHOD.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD lock.
  ENDMETHOD.

  METHOD rba_Billingdocumentitem.
  ENDMETHOD.

  METHOD cba_Billingdocumentitem.
  ENDMETHOD.

ENDCLASS.

CLASS lhc_zsac_i_billing_item DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE zsac_i_billing_item.

    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE zsac_i_billing_item.

    METHODS read FOR READ
      IMPORTING keys FOR READ zsac_i_billing_item RESULT result.

    METHODS rba_Billingdocumentheader FOR READ
      IMPORTING keys_rba FOR READ zsac_i_billing_item\_Billingdocumentheader FULL result_requested RESULT result LINK association_links.

ENDCLASS.

CLASS lhc_zsac_i_billing_item IMPLEMENTATION.

  METHOD update.
  ENDMETHOD.

  METHOD delete.
  ENDMETHOD.

  METHOD read.
  ENDMETHOD.

  METHOD rba_Billingdocumentheader.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_ZSAC_R_BILLING_HEADER DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS finalize REDEFINITION.

    METHODS check_before_save REDEFINITION.

    METHODS save REDEFINITION.

    METHODS cleanup REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_ZSAC_R_BILLING_HEADER IMPLEMENTATION.

  METHOD finalize.
  ENDMETHOD.

  METHOD check_before_save.
  ENDMETHOD.

  METHOD save.
  ENDMETHOD.

  METHOD cleanup.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.
