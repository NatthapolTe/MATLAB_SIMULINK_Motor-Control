s = tf('s');
G  = 1.5/(s*(0.008*s+1));

Td = 400;
C = 1+s/Td;

rlocus(C*G)
dcm = datacursormode;
dcm.Enable = 'on';
dcm.DisplayStyle = 'window';