CLASS zcl_um2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_um2 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

        DATA: lt_um TYPE TABLE OF zum1.

        clear: lt_um[].

        lt_um = VALUE #(
                ( client = '02D5290E594C1EDA93815057FD946626'
                  um = 'KG'
                  descr = 'Kilogram'
                )
                ( client = '02D5290E594C1EDA93815057FD946627'
                  um = 'PC'
                  descr = 'Pieces'
                )
                ( client = '02D5290E594C1EDA93815057FD946628'
                  um = 'L'
                  descr = 'Liter'
                )
              ).

        DELETE FROM zum1.
        INSERT zum1 FROM TABLE @lt_um.

        out->write( |{ sy-dbcnt } Таблица ZUM1 успешно создана| ).

    ENDMETHOD.
ENDCLASS.
