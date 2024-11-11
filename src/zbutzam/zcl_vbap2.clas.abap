CLASS zcl_vbap2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vbap2 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

        DATA: lt_vbap TYPE TABLE OF zvbap2,
              lt_vbak TYPE TABLE OF zvbak2.

        clear: lt_vbap[], lt_vbak[].
*        DELETE FROM zvbak2.
*        DELETE FROM zvbap2.
*        return.

        lt_vbak = VALUE #(
                ( vbak_id = '02D5290E594C1EDA93815057FD946624'
                  vbeln = '00001' "№ замовлення
                  erdat = sy-datum "
                  werk = '0001' "
                  werkn = 'Zavod1' "
                  ihrez = 'Text' "
                  kunnr = '00000001' "
                  lifnr = '00000003' "
                )
              ).

        DELETE FROM zvbak2.
        INSERT zvbak2 FROM TABLE @lt_vbak.

        out->write( |{ sy-dbcnt } Таблица ZVBAK2 успешно создана| ).

        lt_vbap = VALUE #(
                ( vbap_id = '02D5290E594C1EDA93815057F1946624'
                  vbak_id = '02D5290E594C1EDA93815057FD946624'
                  vbeln = '00001' "№ замовлення
                  posnr = '001' "Номер позиції
                  matnr = '000000000000010001' "ID Матеріала
                  vol = '100.333' "Кількість замовлення
                  um  = 'KG'
                  cost = '23.3' "Вартість
                  currc = 'EUR' "Валюта
                )
                ( vbap_id = '02D5290E594C1EDA93815157FD946624'
                  vbak_id = '02D5290E594C1EDA93815057FD946624'
                  vbeln = '00001' "№ замовлення
                  posnr = '002' "Номер позиції
                  matnr = '000000000000010002' "ID Матеріала
                  vol = '1011.4' "Кількість замовлення
                  um  = 'L'
                  cost = '50.33' "Вартість
                  currc = 'EUR' "Валюта
                )
                ( vbap_id = '02D5290E594C1EDA93811051FD946624'
                  vbak_id = '02D5290E594C1EDA93815057FD946624'
                  vbeln = '00001' "№ замовлення
                  posnr = '003' "Номер позиції
                  matnr = '000000000000010003' "ID Матеріала
                  vol = '1234' "Кількість замовлення
                  um  = 'KG'
                  cost = '123' "Вартість
                  currc = 'EUR' "Валюта
                )
              ).

        DELETE FROM zvbap2.
        INSERT zvbap2 FROM TABLE @lt_vbap.

        out->write( |{ sy-dbcnt } Таблица ZVBAP2 успешно создана| ).

    ENDMETHOD.

ENDCLASS.
