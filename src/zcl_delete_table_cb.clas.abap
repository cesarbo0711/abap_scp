CLASS zcl_delete_table_cb DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_delete_table_cb IMPLEMENTATION.





  METHOD if_oo_adt_classrun~main.

  DELETE FROM zrent_brands12.

  IF sy-subrc EQ 0.
     out->write( 'ALL data deleted' ).

  ENDIF.



  ENDMETHOD.
ENDCLASS.
