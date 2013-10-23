function grhRescueSPlabs(varargin)

% rescue subplot labels

if length(varargin)
    factor = varargin{1};
else
    factor = 1.5;
end

v = get(gca,'Position');
set(gca,'Position',[v(1) v(2)*factor v(3) v(4)*.9])