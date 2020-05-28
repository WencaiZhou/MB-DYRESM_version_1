cd subLake1;
../../../bin/OSX/createDYsim.exe dy.pro dy.par MDYsim_subLake1.nc;
../../../bin/OSX/createDYref.exe dy.stg dy.met dy.inf dy.wdr DYref.nc;
../../../bin/OSX/extractDYinfo.exe DYref.nc MDYsim_subLake1.nc dy.cfg;

cd ../subLake2;
../../../bin/OSX/createDYsim.exe dy.pro dy.par MDYsim_subLake2.nc;
../../../bin/OSX/createDYref.exe dy.stg dy.met dy.inf dy.wdr DYref.nc;
../../../bin/OSX/extractDYinfo.exe DYref.nc MDYsim_subLake2.nc dy.cfg;

cd ../subLake3;
../../../bin/OSX/createDYsim.exe dy.pro dy.par MDYsim_subLake3.nc;
../../../bin/OSX/createDYref.exe dy.stg dy.met dy.inf dy.wdr DYref.nc;
../../../bin/OSX/extractDYinfo.exe DYref.nc MDYsim_subLake3.nc dy.cfg;

cd ../;
../../bin/OSX/mdycd.exe mdyresm.cfg;
mv subLake1/MDYsim_subLake1.nc outfiles/MDYsim_subLake1.nc;
mv subLake2/MDYsim_subLake2.nc outfiles/MDYsim_subLake1.nc;
mv subLake3/MDYsim_subLake3.nc outfiles/MDYsim_subLake1.nc;
