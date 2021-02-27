(define (problem problem1) (:domain Ambulancia)
(:objects 

    ambulancia1 - ambulancia
    L1 L2 L3 L4 L5 - localizacion
    paciente1 - paciente
    paciente2 - paciente
    paciente3 - paciente

)

(:init
    ;todo: put the initial state's facts and numeric values here
    (ubicacion ambulancia1 L1)
    (enlace L1 L4)
    (enlace L2 L4)
    (enlace L4 L2)
    (enlace L3 L1)
    (enlace L1 L3)
    (enlace L2 L1)
    (enlace L2 L5)
    (enlace L5 L4)
    (en paciente1 L2)
    (en paciente2 L4)
    (en paciente3 L5)

    
)

(:goal (and
    (ubicacion ambulancia1 L1)
    (en paciente1 L1)
    (en paciente2 L1)
    (en paciente3 L1)
))
)

