CLASS zcl_currc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_currc IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

        DATA: lt_currc TYPE TABLE OF zcurrc.

        clear: lt_currc[].

        lt_currc = VALUE #(
                ( client = '02D5290E594C1EDA93815057FD946626'
                  currc = 'UAH'
                  descr = 'Hrivna'
                )
                ( client = '02D5290E594C1EDA93815057FD946627'
                  currc = 'EUR'
                  descr = 'Euro'
                )
                ( client = '02D5290E594C1EDA93815057FD946628'
                  currc = 'USD'
                  descr = 'Dollar'
                )
              ).

        DELETE FROM zcurrc.
        INSERT zcurrc FROM TABLE @lt_currc.

        out->write( |{ sy-dbcnt } Таблица ZCURRC успешно создана| ).

    ENDMETHOD.
ENDCLASS.
