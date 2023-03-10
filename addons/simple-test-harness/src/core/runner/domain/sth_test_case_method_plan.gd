class_name STHTestCaseMethodPlan
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

var test_method_name:String
var test_method_line_number:int = -1
var test_method_arguments_count:int
var test_method_returned_type:int

#------------------------------------------
# Variables privées
#------------------------------------------

#------------------------------------------
# Fonctions Godot redéfinies
#------------------------------------------

static func from_parsed_function(parsed_function:ParsedGDScriptFunction) -> STHTestCaseMethodPlan:
    var method_plan:STHTestCaseMethodPlan = STHTestCaseMethodPlan.new()
    method_plan.test_method_name = parsed_function.function_name
    method_plan.test_method_line_number = parsed_function.function_line_number
    method_plan.test_method_arguments_count = parsed_function.function_arguments.size()
    method_plan.test_method_returned_type = parsed_function.function_returned_type
    return method_plan

static func deserialize(data:Dictionary) -> STHTestCaseMethodPlan:
    var method_plan:STHTestCaseMethodPlan = STHTestCaseMethodPlan.new()
    method_plan.test_method_name = data["test_method_name"]
    method_plan.test_method_line_number = data["test_method_line_number"]
    method_plan.test_method_arguments_count = data["test_method_arguments_count"]
    method_plan.test_method_returned_type = data["test_method_returned_type"]
    return method_plan

func serialize() -> Dictionary:
    return {
        "test_method_name" : test_method_name,
        "test_method_line_number" : test_method_line_number,
        "test_method_arguments_count" : test_method_arguments_count,
        "test_method_returned_type" : test_method_returned_type
    }

#------------------------------------------
# Fonctions publiques
#------------------------------------------

#------------------------------------------
# Fonctions privées
#------------------------------------------

