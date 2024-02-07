use "E:\Curriculum001\UG3\RAE\Code\dataCleaning\use_reg.dta" 

ologit sclfsato relrk fimngrs_dv dvage age i.sex i.region4 i.edu2 hhsize nchresp i.health i.jbstat i.marstat_dv if fimngrs_dv > 100
brant

margins, dydx(relrk) predict(outcome(6))

margins, dydx(relrk) predict(outcome(1))

margins, dydx(relrk) predict(outcome(3))

margins, dydx(relrk)


ologit sclfsato relrk fimngrs_dv dvage age i.sex i.region4 i.edu2 hhsize nchresp i.health i.jbstat i.marstat_dv if fimngrs_dv > 100
oparallel, ic
linktest