function [ u ] = pd_controller(~, s, s_des, params)
%PD_CONTROLLER  PD controller for the height
%
%   s: 2x1 vector containing the current state [z; v_z]
%   s_des: 2x1 vector containing desired state [z; v_z]
%   params: robot parameters

u = 0;


% FILL IN YOUR CODE HERE
Kp=300;
Kv=30;
e=s_des-s;
u=params.mass*(Kp*e(1)+Kv*e(2)+params.gravity);
if (u>params.u_max) u=params.u_max; end
if (u<params.u_min) u=params.u_min; end

end

