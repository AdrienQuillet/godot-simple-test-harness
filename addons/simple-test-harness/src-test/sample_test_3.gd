class_name SampleTest3
extends TestCase

#------------------------------------------
# Signaux
#------------------------------------------

#------------------------------------------
# Exports
#------------------------------------------

#------------------------------------------
# Variables publiques
#------------------------------------------

#------------------------------------------
# Variables privées
#------------------------------------------

#------------------------------------------
# Fonctions Godot redéfinies
#------------------------------------------

func _init(str:String) -> void:
    pass

#------------------------------------------
# Fonctions publiques
#------------------------------------------

func test1() -> void:
    assert_that(5).is_equal_to(5)

func test2() -> void:
    assert_that(5).is_equal_to(5)

func test3() -> void:
    assert_that(5).is_equal_to(5)
#------------------------------------------
# Fonctions privées
#------------------------------------------

