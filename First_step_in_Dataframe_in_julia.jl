VERSION

isfile.(["Project.toml", "Manifest.toml"])

] status

import Pkg; 
Pkg.add("CSV")

] status

import Pkg; 
Pkg.add("DataFrames")

] status

import Pkg; 
Pkg.add("FreqTables")

import Pkg; 
Pkg.add("GLM")

import Pkg; 
Pkg.add("Pipe")

import Pkg; 
Pkg.add("PyPlot")

] status

] instantiate

using DataFrames

using Statistics

using PyPlot

using GLM

#This is a matrix in which we store 8 columns representing Anscombe's quartet data

aq = [10.0   8.04  10.0  9.14  10.0   7.46   8.0   6.58
       8.0   6.95   8.0  8.14   8.0   6.77   8.0   5.76
      13.0   7.58  13.0  8.74  13.0  12.74   8.0   7.71
       9.0   8.81   9.0  8.77   9.0   7.11   8.0   8.84
      11.0   8.33  11.0  9.26  11.0   7.81   8.0   8.47
      14.0   9.96  14.0  8.1   14.0   8.84   8.0   7.04
       6.0   7.24   6.0  6.13   6.0   6.08   8.0   5.25
       4.0   4.26   4.0  3.1    4.0   5.39  19.0  12.50 
      12.0  10.84  12.0  9.13  12.0   8.15   8.0   5.56
       7.0   4.82   7.0  7.26   7.0   6.42   8.0   7.91
       5.0   5.68   5.0  4.74   5.0   5.73   8.0   6.89]

df = DataFrame(aq)

newnames = vec(string.(["x","y"],[1 2 3 4]))

string.(["x","y"],[1 2 3 4])

rename!(df, newnames)

DataFrame(aq, [:x1, :y1, :x2, :y2, :x3, :y3, :x4, :y4])

df.y1

df[:, :y1]

select!(df,r"x",:)

describe(df, :mean => mean, :std => std)

df.id = 1:nrow(df)
df

ncol(df)

select(df, :id, :)

df

xlim = collect(extrema(Matrix(select(df, r"x"))) .+ (-1, 1))

ylim = collect(extrema(Matrix(select(df, r"y"))) .+ (-1, 1))

x = :var1
y = :var2
xc = 1:3
yc = 4:6
DataFrame(x => xc, y => yc)

DataFrame(var1=xc, var2=yc)

df.x1

df[:, :x1]

n = :x1

v = df[!, n]

v === df.x1


