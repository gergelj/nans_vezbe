function [d] = zadatak10(A)

[mn, ind_min] = min(A);
[mx, ind_max] = max(A);

min_pt_x = [mn(1), A(ind_min(1), 2)]; %tacka koja ima najmanju x koordinatu
min_pt_y = [A(ind_min(2),1), mn(2)]; %tacka koja ima najmanju y koordinatu
max_pt_x = [mx(1), A(ind_max(1), 2)]; %tacka koja ima najvecu x koordinatu
max_pt_y = [A(ind_max(2),1), mx(2)]; %tacka koja ima najvecu y koordinatu

%racuna se udaljenost izmedju dva parova tacaka
distances = [sqrt((max_pt_x(1)-min_pt_x(1))*(max_pt_x(1)-min_pt_x(1))+(max_pt_x(2)-min_pt_x(2))*(max_pt_x(2)-min_pt_x(2))), sqrt((max_pt_y(1)-min_pt_y(1))*(max_pt_y(1)-min_pt_y(1))+(max_pt_y(2)-min_pt_y(2))*(max_pt_y(2)-min_pt_y(2)))];
d = max(distances); %najveca udaljenost od dva parova tacaka je pobednik

scatter(A(:,1), A(:,2), 'x');
end