CLASS zcl_inco1 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_inco1 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

        DATA: lt_inco1 TYPE TABLE OF zinco1.

        clear: lt_inco1[].
*--- create table ZMATERIAL2

        lt_inco1 = VALUE #(
                ( client = '02D5290E594C1EDA93815057FD946626'
                  inco_id = 'EXW'
                )
                ( client = '02D5290E594C1EDA93815057FD946627'
                  inco_id = 'FCA'
                )
                ( client = '02D5290E594C1EDA93815057FD946628'
                  inco_id = 'FAS'
                )
                ( client = '02D5290E594C1EDA93815057FD946629'
                  inco_id = 'FOB'
                )
                ( client = '02D5290E594C1EDA93815057FD946630'
                  inco_id = 'CFR'
                )
                ( client = '02D5290E594C1EDA93815057FD946631'
                  inco_id = 'CIF'
                )
                ( client = '02D5290E594C1EDA93815057FD946632'
                  inco_id = 'CPT'
                )
                ( client = '02D5290E594C1EDA93815057FD946633'
                  inco_id = 'CIP'
                )
                ( client = '02D5290E594C1EDA93815057FD946634'
                  inco_id = 'DAP'
                )
                ( client = '02D5290E594C1EDA93815057FD946635'
                  inco_id = 'DPU'
                )
                ( client = '02D5290E594C1EDA93815057FD946636'
                  inco_id = 'DDP'
                )
              ).

        DELETE FROM zinco1.
        INSERT zinco1 FROM TABLE @lt_inco1.

        out->write( |{ sy-dbcnt } Таблица ZINCO1 успешно создана| ).

    ENDMETHOD.
ENDCLASS.
