class zcl_student_projects_j15 definition
  public
  final
  create public .

  public section.

    interfaces if_oo_adt_classrun.

    class-methods create_project
      importing
        iv_project_name        type string
        iv_project_description type string
      returning
        value(rv_project)      type string.

  protected section.
  private section.
endclass.



class zcl_student_projects_j15 implementation.

  method create_project.

    rv_project = |{ iv_project_name } { iv_project_description } |.

  endmethod.


  method if_oo_adt_classrun~main.

    data: lv_project_name type string value 'Students',
          lv_project_description type string value 'AbapGit Project'.

    data(lv_project) = create_project( iv_project_name        = lv_project_name
                                       iv_project_description = lv_project_description ).

    out->write( lv_project ).












  endmethod.



endclass.
