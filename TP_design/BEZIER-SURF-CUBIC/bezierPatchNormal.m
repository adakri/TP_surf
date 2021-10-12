function Normal_array = bezierPatchNormal(P, u, v)
  %
  %Compute the value in the points
  derivative_u = []
  derivative_v = []
  
  %du(P,u(1),v(1));
  
  %error("conscious")
  Normal_array = [];

  for i=1:length(u)
    for j=1:length(v)
      disp("***");
      %dv(P,u(i),v(j))
      %du(P,u(i),v(j))
      Normal_array(i,j,:) = [cross( du(P,u(i),v(j)), dv(P,u(i),v(j)) )];
    endfor
  endfor
  %Normal_array
  %error("conscious")
  %derivative_u
  %derivative_v
  
  for i=1:length(u)
    for j=1:length(v)
      Normal_array(i,j,:) = Normal_array(i,j,:) ./ sqrt(Normal_array(i,j,1)^2 + Normal_array(i,j,2)^2 + Normal_array(i,j,3)^2); 
      Normal_array(i,j,:)
    endfor
  endfor
    
  end