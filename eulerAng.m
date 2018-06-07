% First, import the grain output data as a SIZEx4 table polydoms.
poly = table2array(polydoms);

% Generate a number of random Euler angles equal to the number of domains
polyeuler = Euler(randq(max(poly(:,4)))).*(180/pi); % (Radians to Degrees)

% Expand the array with the indicies of the euler angles (to accomidate phi and gamma)
poly(:,5)=poly(:,4);
poly(:,6)=poly(:,4);

% Now, replace the indicies of the euler angles with columns of Theta, Phi, Gamma
poly(:,4)=polyeuler(poly(:,4),1);
poly(:,5)=polyeuler(poly(:,5),2);
poly(:,6)=polyeuler(poly(:,6),3);

% Save as .txt. This is a limitation of Matlab. It needs to be renamed to eulerAng.in afterwards.
writetable(array2table(poly),'C:\Users\ralian\Desktop\drive\chen\eulerAng.txt','Delimiter','\t','WriteVariableNames',false)