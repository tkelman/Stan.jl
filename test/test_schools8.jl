old = pwd()
dir = Pkg.dir("Stan")*"/Examples/EightSchools/"
cd(dir)
println("Switched to directory: $(dir)")

for i in 1:8
  isfile("schools8_samples_$(i).csv") && rm("schools8_samples_$(i).csv")
  isfile("schools8_diagnostics_$(i).csv") && rm("schools8_diagnostics_$(i).csv")
end
isfile("schools8") && rm("schools8")
isfile("schools8.cpp") && rm("schools8.cpp")
isfile("schools8.d") && rm("schools8.d")
isfile("schools8_build.log") && rm("schools8_build.log")
isfile("schools8_run.log") && rm("schools8_run.log")

include("$(dir)schools8.jl")

for i in 1:8
  isfile("schools8_samples_$(i).csv") && rm("schools8_samples_$(i).csv")
  isfile("schools8_diagnostics_$(i).csv") && rm("schools8_diagnostics_$(i).csv")
end
isfile("schools8") && rm("schools8")
isfile("schools8.cpp") && rm("schools8.cpp")
isfile("schools8.d") && rm("schools8.d")
isfile("schools8_build.log") && rm("schools8_build.log")
isfile("schools8_run.log") && rm("schools8_run.log")

cd(old);