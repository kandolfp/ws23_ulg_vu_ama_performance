# This file was generated, do not modify it. # hide
using Profile

Profile.clear()
@profile for _ in 1:100_000; my_sum(V); end
Profile.print(maxdepth=15)