function handle = grhCline(x,y)

% p = grhCline(x,y)

% draw lines between points represented by complex numbers in corresponding
% entries in x and y


assert(numel(x) == numel(y))

x = x(1:numel(x));
y = y(1:numel(y));

handle = line(real([x; y]), imag([x; y]));