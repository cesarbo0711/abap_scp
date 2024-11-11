
CLASS zcl_generate_travel_data_1902 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_generate_travel_data_1902 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.


*   output the result as a console message.

    out->write( '| Hello World |' ).
    ENDMETHOD.

ENDCLASS.

