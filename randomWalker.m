% RANDOM WALK SIMULATOR
steps = 200;
moves = randi([-1 1], steps, 2);  % random steps
path = cumsum(moves);             % cumulative motion

figure;
plot(path(:,1), path(:,2), 'LineWidth', 2);
title('2D Random Walk Simulator');
xlabel('X Position');
ylabel('Y Position');
axis equal;