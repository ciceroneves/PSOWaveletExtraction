% ------------------------------------------------------
% SwarmOps - Heuristic optimization for Matlab
% Copyright (C) 2003-2010 Magnus Erik Hvass Pedersen.
% Please see the file license.txt for license details.
% SwarmOps on the internet: http://www.Hvass-Labs.org/
% ------------------------------------------------------

% Create data-struct for example optimization problem.
% You may use this as a starting point for custom problems.
% Parameters:
%     dim; the dimensionality of the search-space, e.g. 10.
%     maxEvaluations; the maximum number of fitness evaluations
%                     to perform in optimization.
% Returns:
%     data; the data-struct.
function data = myproblemdataWTB(maxEvaluations)
    % Create data-struct that optimizers expect.
    % This must be created.
    data = struct( ...
            'Dim', 50, ...                            % Dimensionality of search-space.
            'AcceptableFitness', 0.001, ...         % Stop optimization if fitness is below this.
            'MaxEvaluations', maxEvaluations, ...    % Max number of fitness evaluations to perform.
            'LowerInit', -0.5*ones(1,50), ...          % Initialization lower-bound.
            'UpperInit', 0.5*ones(1,50), ...              % Initialization upper-bound.
            'LowerBound', -1*ones(1,50), ...     % Search-space lower-bound.
            'UpperBound', ones(1,50));            % Search-space upper-bound.

    % Add custom data to the data-struct. This could
    % be included in the struct() statement above,
    % but is separated for clarity.
    data.MyExtraData = sin([1:50]);
end

% ------------------------------------------------------
