CLASS zcl_renting_load_data1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_renting_load_data1 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  out->write( 'hola chamo' ).
  ENDMETHOD.
ENDCLASS.
