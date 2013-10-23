function [rows, cols, waste] = grhOptSubPlots(N)

% [rows, cols, waste] = grhOptSubPlots(N)
%
% optimise subplot rows and columns to achieve N subplots with min waste

rows = floor(sqrt(N));

if ~mod(N, rows) & N/rows-rows<3
    cols = N/rows;
else
    rows = rows-1;
    if ~mod(N, rows) & N/rows-rows<3
        cols = N/rows;
    else
        [rows, cols] = grhOptSubPlots(N+1);
    end
end

waste = rows*cols-N;
