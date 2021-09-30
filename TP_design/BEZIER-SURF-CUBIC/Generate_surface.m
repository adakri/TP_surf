function Array1 = Generate_surface(num_patchs)
%GENERATE_SURFACE
% échantillone des courbes usuelles en patchs de points
%   Detailed explanation goes here
Array1 = [];
Array2 = [];


u = linspace(0,2,num_patchs*4); 


%surface 3: z= x**2 - y**2
fid = fopen('surface3','wt');

for i=1:length(u)
    for j=1:length(u)
        x = u(i);
        y = u(j);
        %Array1(i,j,1) = x^2 + y^2;
        fprintf(fid, " %e \t %e \t %e \n",y,x, -0.3 *(x * 0.5)^2 - 0.6* (y*0.5)^2);
    end
end

v = linspace(-2,0,num_patchs*4); 

for i=1:length(v)
    for j=1:length(v)
        x = u(i);
        y = v(j);
        %Array1(i,j,1) = x^2 + y^2;
        fprintf(fid, " %e \t %e \t %e \n",y,x, -0.3 *(x * 0.5)^2 - 0.6* (y*0.5)^2);
    end
end

fclose(fid);

%surface 4: z= x**2 - y**2
fid = fopen('surface4','wt');

for i=1:length(u)
    for j=1:length(u)
        x = u(i);
        y = u(j);
        Array2(i,j,1) = exp(-x) * -(-10+y^2) / 5. + exp(-y)*(-10+x^2) / 5.;
        fprintf(fid, " %e \t %e \t %e \n",y,x, exp(-x) * -(-10+y^2) / 5. + exp(-y)*(-10+x^2) / 5.);
    end
end

fclose(fid);

end

