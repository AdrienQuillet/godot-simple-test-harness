class_name AssertionReporter
extends RefCounted

#------------------------------------------
# Signaux
#------------------------------------------

#------------------------------------------
# Exports
#------------------------------------------

#------------------------------------------
# Variables publiques
#------------------------------------------

var assertion_reports:Array[AssertionReport] = []
var test_method_name:String

#------------------------------------------
# Variables privées
#------------------------------------------


#------------------------------------------
# Fonctions Godot redéfinies
#------------------------------------------

func _init(tmn:String) -> void:
    test_method_name = tmn

#------------------------------------------
# Fonctions publiques
#------------------------------------------

func has_failures() -> bool:
    return get_first_report_failure() != null

func get_first_report_failure() -> AssertionReport:
    for report in assertion_reports:
        if not report.is_success:
            return report
    return null

func reset() -> void:
    assertion_reports.clear()

#------------------------------------------
# Fonctions privées
#------------------------------------------

