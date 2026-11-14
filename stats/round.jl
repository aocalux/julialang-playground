n = 100_000_000

nb = trunc.(rand(n) .* 100) ./ 10

sy = [round(x) for x in nb]
st = [floor(x + 0.5) for x in nb]

original = sum(nb)
sum_sy = sum(sy)
sum_st = sum(st)

println("symmetric rounding: ", sum_sy)
println("standard rounding: ", sum_st)
println("original sum: ", original)

accuracy_sy = (1 - abs(original - sum_sy) / original) * 100
accuracy_st = (1 - abs(original - sum_st) / original) * 100

println("Accuracy symmetric: ", accuracy_sy, "%")
println("Accuracy standard: ", accuracy_st, "%")

total_error_sy = abs(original - sum_sy)
total_error_st = abs(original - sum_st)

println("Total deviation symmetric: ", total_error_sy)
println("Total deviation standard: ", total_error_st)