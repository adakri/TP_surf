function curve = bezier_curve(P,v)
  curve = [];
  %compute bezier curve from a number of points  
end


function  derivative = du(B, u, v)
  % Compute the derivative in a 16 point patch in points of vectors u and v where size(u)=size(v)
  % we need the values of bezier coefficients
  values = bezierPatchEval(B,u,v);
  points = [];
  for i=1:length(u):
    
  endfor
 end
 
 function  derivative = dv(B, u, v)
  % Compute the derivative in a 16 point patch in points of vectors u and v where size(u)=size(v)
  % we need the values of bezier coefficients
  values = bezierPatchEval(B,u,v);
  points = [];
  for i=1:length(v):
    
  endfor
 end



function Normal_array = bezierPatchNormal(P, u, v)
  %
  %Compute the value in the points
  derivative_u = du(B,u,v);
  derivative_v = dv(B,u,v);
  Normal_array = [];
  Normals = cross(derivative_u,derivative_v);
  
  for i=1:length(u):
    for j=1:length(v):
      Normals(i,j,:) = Normals(i,j,:) / norm(Normals(i,j,:)); 
    endfor
  endfor
  
  Normal_array = Normals;
  
  end