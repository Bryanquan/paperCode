% we can set different values for the diagonal elements of the diagonal matrix in our comparative results 
% in order to shorten the synchronization time and make the curves of chaotic synchronization smoother than 
% the ones with other methods
function dm=lorenz(t,m)
a=10;
b=28;
c=8/3;
h=4;
k1=-100;
k2=-100;
k3=-100;
dm=zeros(6,1);

%the driving system
dm(1)=a*(m(2)-m(1));
dm(2)=b*m(1)-m(2)-m(1)*m(3);
dm(3)=m(1)*m(2)-c*m(3);

% desigin of controller
u1=h*a*(m(2)-m(1))+k1*(m(4)-h*m(1))-a*(m(4)-h*m(1));
u2=b*h*m(1)-h*m(1)*m(3)-h*m(2)+m(4)*m(6)+m(5)+k2*(m(5)-h*m(2))-b*m(4);
u3=-h*c*m(3)+h*m(1)*m(2)-m(4)*m(5)+k3*(m(6)-h*m(3))+c*m(6);


%the response system
dm(4)=m(7)*(m(5)-m(4))+u1;
dm(5)=m(8)*m(4)-m(5)-m(4)*m(6)+u2;
dm(6)=m(4)*m(5)-m(9)*m(6)+u3;


%Parameter adaptive
dm(7)=(m(4)-m(5))*(m(4)-h*m(1));
dm(8)=-m(4)*(m(5)-h*m(2));
dm(9)=m(6)*(m(6)-h*m(3));
