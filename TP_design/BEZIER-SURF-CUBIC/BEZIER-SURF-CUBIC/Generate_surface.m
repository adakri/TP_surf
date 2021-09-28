function Array = Generate_surface(num_patchs)
%GENERATE_SURFACE
% échantillone des courbes usuelles en patchs de points
%   Detailed explanation goes here
Array = [];

u = linspace(0,2,num_patchs*16); 

%surface 3: z= x**2 - y**2
fid = fopen('surface3','wt');


for i=1:length(u)
    for j=1:length(u)
        Array(i,j,1) = i^2 - j^2;
        %fprintf(fid,
    end
end




end

