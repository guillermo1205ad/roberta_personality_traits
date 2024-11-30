* Extraversion

label define l_founder 1 "Schumpeterian" 2 "Non-Schumpeterian"
label values founder l_founder

cdf EXT, hgroup(founder) lpattern(shortdash solid) color(black black) graphr(fcolor(white))
graph export cdf_ext.png, as(png) replace

clorenz EXT, hgroup(founder) type(gen) title("a. Extraversion, Lorenz Generalized Curves") lpattern(solid shortdash dash) color(black black) graphr(fcolor(white))
graph export lorenzg_ext.png, as(png) replace

clorenzs2d EXT EXT, cond1(founder==1 ) cond2(founder==2) min(0) max(1) type(gen) conf(ts) title("a. Arrar test for Extraversion") graphr(fcolor(white))
graph export Arrar_ext.png, as(png) replace

* Neuroticism

cdf NEU, hgroup(founder) lpattern(shortdash solid) color(black black) graphr(fcolor(white))
graph export cdf_neu.png, as(png) replace

clorenz NEU, hgroup(founder) type(gen) title("b. Neuroticism, Lorenz Generalized Curves") lpattern(solid shortdash dash) color(black black) graphr(fcolor(white))
graph export lorenzg_neu.png, as(png) replace

clorenzs2d NEU NEU, cond1(founder==1 ) cond2(founder==2) min(0) max(1) type(gen) conf(ts) title("b. Arrar test for Neuroticism") graphr(fcolor(white))
graph export Arrar_neu.png, as(png) replace
 

* Openness

cdf OPN, hgroup(founder) lpattern(shortdash solid) color(black black) graphr(fcolor(white))
graph export cdf_opn.png, as(png) replace

clorenz OPN, hgroup(founder) type(gen) title("e. Openness, Lorenz Generalized Curves") lpattern(solid shortdash dash) color(black black) graphr(fcolor(white))
graph export lorenzg_opn.png, as(png) replace

clorenzs2d OPN OPN, cond1(founder==1 ) cond2(founder==2) min(0) max(1) type(gen) conf(ts) title("e. Arrar test for Openness") graphr(fcolor(white))
graph export Arrar_opn.png, as(png) replace

log close
exit

