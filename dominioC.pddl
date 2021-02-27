;Header and description

(define (domain Ambulancia)

;remove requirements that are not needed
(:requirements :strips :typing :negative-preconditions )

(:types ;todo: enumerate types and their hierarchy here, e.g. car truck bus - vehicle
    ambulancia localizacion paciente - object
)

(:predicates ;todo: define predicates here
    (ubicacion ?c - ambulancia ?l - localizacion)
    (enlace ?l1 - localizacion ?l2 - localizacion)
    (en ?p - paciente ?a - localizacion)
    (cargado ?a - ambulancia ?p - paciente)
)

(:action Conducir
    :parameters (?ambulancia - ambulancia ?locOrigen - localizacion ?locDestino - localizacion)
    :precondition ( and
        (ubicacion ?ambulancia ?locOrigen)
        (enlace ?locOrigen ?locDestino)
        )

    :effect (and 
        (ubicacion ?ambulancia ?locDestino)
        (not (ubicacion ?ambulancia ?locOrigen))

    )
)

(:action Subir
    :parameters (?ambulancia - ambulancia ?loc - localizacion ?paciente - paciente)
    :precondition ( and
        (ubicacion ?ambulancia ?loc)
        (en ?paciente ?loc)
        (not (cargado ?ambulancia ?paciente))
        )

    :effect (and 
       (cargado ?ambulancia ?paciente)
        (ubicacion ?ambulancia ?loc)
        (not (en ?paciente ?loc))
    )
)
(:action Bajar
    :parameters (?ambulancia - ambulancia ?loc - localizacion ?paciente - paciente)
    :precondition ( and
        (ubicacion ?ambulancia ?loc)
        (cargado ?ambulancia ?paciente)
        )

    :effect (and 
       (not(cargado ?ambulancia ?paciente))
       (en ?paciente ?loc)
       (ubicacion ?ambulancia ?loc)
    )
)
)