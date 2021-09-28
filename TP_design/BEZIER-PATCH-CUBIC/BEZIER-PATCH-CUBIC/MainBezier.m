close all, clear all
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Calcul et visualisation d'un patch de Bezier 
%
% Input: fichoer ascii avec 16 points de controle
%
% Les patches est evalue en un nombre fixe (num_p) de parametres (u,v).
%
% Parametres: 
% num_p : nombre de valeurs de parametres = nombre de points de controle
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
BezierSurf = load('surface1');  % read control points
%BezierSurf = load('surface2'); % read control points
%BezierSurf = load('surface3'); % read control points
%BezierSurf = load('surface4'); % read control points
%load('teapot'); %loading matrix B
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num_p=20;                    % nombre de valeurs de parametre en direction u et v

%-------------------------------------------------
[nb,~] = size(BezierSurf) % nombre de points de controle dans le fichier
if nb == 16
  
  % Matrice B des points de controle
  for i=1:4
    for j=1:4
      B(i,j,1) = BezierSurf((i-1)*4+j,1);
      B(i,j,2) = BezierSurf((i-1)*4+j,2);
      B(i,j,3) = BezierSurf((i-1)*4+j,3);
    end
  end
  B

  % La matrice B stocke tous les points de controle du patch
  % B(:,:,:) sont tous les points de controle du patch
  % La dimension de B(:,:,:) est 4 x 4 x 3, i.e., 16 points de controle
  % a 3 coordonnees (x,y,z)

  % B(:,:,1): x-coordonnes des points de controle du patch comme matrice 4 x 4
  % B(:,:,2): y-coordonnes des points de controle du patch comme matrice 4 x 4
  % B(:,:,3): z-coordonnes des points de controle du patch comme matrice 4 x 4

  % ------------------------------------
  % num_p+1 valeurs de parametres uniformes: 0,1,2,...,num_p en u et v
  u = linspace(0,1,num_p); 
  v = u; 

  %  ------------------------------------
  % Cubic Bezier patch 
  S(:,:,:)=bezierPatchEval(B(:,:,:),u,v); %evaluation du patch en (num_p+1) x (num_p+1) points

  % ------------------------------------
  % Visualisation d'un patch de Bezier
  plotBezierPatch3D(B(:,:,:),S(:,:,:)) % plot d'un seul patch

else
  display('ERROR: 16 control points are needed !');
end

