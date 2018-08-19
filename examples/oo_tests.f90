module oo_tests

    use metis_oo_interface
    use metis_interface
    use metis_enum


contains

    subroutine test_import()

        type(graph_type) :: graph

        ! call import_graph("/home/ipribec/Programs/metis-5.1.0/graphs/copter2.graph", graph)


        ! call import_graph('/home/ipribec/Programs/fmetis/graphs/multi_constraint.graph',graph)

        call import_graph('/home/ipribec/Programs/fmetis/graphs/fdm.graph',graph)

        print *, size(graph%xadj), size(graph%adjncy)

        print *, "xadj = ", graph%xadj
        print *, "adjncy = ", graph%adjncy
        print *, "vwgt = ", graph%vwgt

        call export_graph('fdm.graph',graph)

    end subroutine

end module

program main

    use oo_tests

    call test_import()

end program