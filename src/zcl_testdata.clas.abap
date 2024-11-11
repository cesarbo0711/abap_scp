CLASS zcl_testdata DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES : if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_testdata IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
  DATA : wa_custom TYPE zdty54_college.

    wa_custom-studentid = '00001'.
    wa_custom-fathername = 'Abhay'.
    wa_custom-course = 'Restful Application Programming'.
    wa_custom-studentname = 'Rajesh'.
    wa_custom-mothername = 'Priya'.
    wa_custom-yearofjoining = '2020'.
    wa_custom-mobile = '4342523523'.
    wa_custom-hobbies = 'Music , Cricket'.
    wa_custom-college = 'IIT Delhi'.
    wa_custom-mandt = sy-mandt.

    MODIFY zdty54_college FROM @wa_custom.
  ENDMETHOD.

ENDCLASS.
