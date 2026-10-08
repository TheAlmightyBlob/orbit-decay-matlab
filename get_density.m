function rho = get_density(alt, params)
rho = exp(interp1(params.alt_table, log(params.rho_table), alt, 'linear'));
end

get_density(100e3, params)  %[output:1c7cad68]
get_density(220e3, params)
get_density(400e3, params)
get_density(250e3, params)

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
%[output:1c7cad68]
%   data: {"dataType":"error","outputData":{"errorType":"runtime","text":"Unrecognized function or variable 'params'."}}
%---
