% ------------------------------------------------------
% SwarmOps - Heuristic optimization for Matlab
% Copyright (C) 2003-2010 Magnus Erik Hvass Pedersen.
% Please see the file license.txt for license details.
% SwarmOps on the internet: http://www.Hvass-Labs.org/
% ------------------------------------------------------

% Example optimization problem. You may use this as
% a starting point for custom problems.
% Parameters:
%     x; position in the search-space.
%     data; data-struct for optimization problem.
% Returns:
%     fitness; the measure to be minimized.
function fitness = myproblemWTB(x, data)
    % Retrieve data from struct.
    r = data.MyExtraData;

    % Displace position.
    t = abs(x-r);

    % Compute and return fitness.
    fitness = sum(t.^2)/data.Dim;
end

% ------------------------------------------------------
