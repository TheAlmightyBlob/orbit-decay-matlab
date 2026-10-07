[X, Y, Z] = sphere(100);

figure;
surf(X*R_E, Y*R_E, Z*R_E, 'FaceColor', [0.2 0.5 1.0], 'EdgeColor', 'none', FaceAlpha=0.4);
hold on

trail = animatedline('Color', 'r', 'LineWidth', 1.2);
sat = plot3(nan, nan, nan, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 6);

for k = 1:numel(x)
    addpoints(trail, x(k), y(k), z(k));
    set(sat, 'XData', x(k), 'YData', y(k), 'ZData', z(k));
    drawnow
end

% plot3(x,y,z,"r-",Linewidth=0.2)


axis equal
grid on
xlabel('x (m)')
ylabel('y (m)')
zlabel('z (m)')
title('Satellite Orbit Around Earth')
view(3)
camlight
lighting gouraud
rotate3d on
axis vis3d
%%
% 3D orbit animation
figure;
hold on;

% Earth
[xe, ye, ze] = sphere(60);
surf(params.R_E * xe, params.R_E * ye, params.R_E * ze, ...
    'FaceColor', [0.2 0.4 0.8], 'EdgeColor', 'none', 'FaceAlpha', 0.25);

% Orbit trail and satellite marker
trail = animatedline('Color', 'r', 'LineWidth', 1.5);
sat = plot3(NaN, NaN, NaN, 'ro', 'MarkerFaceColor', 'r', 'MarkerSize', 6);

axis equal;
grid on;
xlabel('X (m)');
ylabel('Y (m)');
zlabel('Z (m)');
view(3);
camlight;
lighting gouraud;

% Animate every Nth point to keep it smooth
N = max(1, round(numel(x) / 2000));
for k = 1:numel(x)
    addpoints(trail, x(k), y(k), z(k));
    set(sat, 'XData', x(k), 'YData', y(k), 'ZData', z(k));
    drawnow
end


%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright"}
%---
