modprime = []
n=50
realprime = prime_range(10^7)
for x in realprime:
    modedprime = mod(x,n)
    modprime.append(modedprime)
stats.TimeSeries(modprime).plot_histogram()