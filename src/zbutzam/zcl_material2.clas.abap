CLASS zcl_material2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_material2 IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.

        DATA: lt_mat TYPE TABLE OF zmaterial2.

        clear: lt_mat[].
*--- create table ZMATERIAL2
*DELETE FROM zmaterial2.
*return.

        lt_mat = VALUE #(
                ( client = '02D5290E594C1EDA93815057FD946626'
                  matnr = '10001' "ID Матеріала
                  maktx = 'Крупи' "ID Матеріала
                  um = 'КГ' "Од Виміру матеріала
                )
                ( client = '02D5290E594C1EDA93815C50CD7AE62C'
                  matnr = '10002' "ID Матеріала
                  maktx = 'Олія' "ID Матеріала
                  um = 'Л' "Од Виміру матеріала
                )
                ( client = '02D5290E594C1EDA93858EED2DA2EB0D'
                  matnr = '10003' "ID Матеріала
                  maktx = 'Борошно' "ID Матеріала
                  um = 'КГ' "Од Виміру матеріала
                )
              ).

        DELETE FROM zmaterial2.
        INSERT zmaterial2 FROM TABLE @lt_mat.

        out->write( |{ sy-dbcnt } Таблица ZMATERIAL2 успешно создана| ).

    ENDMETHOD.
ENDCLASS.
