function SomeRandomName(omega, Lab, Lbc)

%Here I have given omega, lab and lbc as input variables.

%Generating linearly spaced vector

phi = linspace(0,2*pi,1000); %assuming phi0 = 0
dphi = phi(2) - phi(1);

Yb = Lab*sin(phi);
Xb = Lab*cos(phi);

alpha = asin(Yb/Lbc); %angle of link BC wrt the x-axis
Xab = Lbc*cos(alpha); %projection of BC onto the x-axis
Xc = Xb + Xab; %X-position of C is the projection of links ab and bc onto the X-axis

Vc = diff(Xc)/dphi; %take derivative of Xc versus dphi
Ac = diff(Vc)/dphi^2; %take double derivative of Xc versus dphi

figure
plot(phi, Xc);
hold on
plot(phi(1:length(phi) - 1), Vc);
hold on
plot(phi(1:length(phi) - 2), Ac);
end