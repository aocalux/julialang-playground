println("Calculator v1")
println()

print("operator (+,-,*,/): ")
operator = readline()

print("arg1: ")
arg1 = parse(Float64, readline())

print("arg2: ")
arg2 = parse(Float64, readline())

result = (operator == "+") ? arg1 + arg2 :
(operator == "-") ? arg1 - arg2 :
(operator == "*") ? arg1 * arg2 : arg1 / arg2

println(result)