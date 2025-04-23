CLASS zcl_ep_sales DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    CLASS-DATA: go_instance type REF TO zcl_ep_sales,
                gt_sales type TABLE of ztep_sales_un,
                gr_orderid_delete type range of ztep_sales_un-orderid.

    Class-METHODS get_instance RETURNING VALUE(ro_instance) type REF TO zcl_ep_sales.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_ep_sales IMPLEMENTATION.
  METHOD get_instance.

    go_instance = ro_instance = COND #(
        when go_instance is bound then go_instance
        else new #(  )
    ).

  ENDMETHOD.

ENDCLASS.
