using Plots

x = -200:0.1:200

f(x) = -x^3 + 100x^2 + 10^6
g(x) = x^3 + 100x^2 - 10^6
h(x) = 4*(10^6)sin(0.04x) + 125*(10^4)
i(x) = 0.8 * (1.01)^(x+1450)


myplot = plot(x, f,
    title="Funktion",
    label="f(x)",
    xlabel="x",
    ylabel="y",
    linewidth=3,
    color=:deeppink,
    legend=:topright,
    grid=true,
)

plot!(myplot, x, g,
    label="g(x)",
    linewidth=3,
    color=:purple
)

plot!(myplot, x, h,
    label="h(x)",
    linewidth=3,
    color=:gray
)

plot!(myplot, x, i,
    label="i(x)",
    linewidth=3,
    color=:red;
)

savefig(myplot, "functions.png")

gui()

# readline() # hack to keep window open