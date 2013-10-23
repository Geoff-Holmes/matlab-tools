function grhSizeFig(varargin)

% set figure to required actual size given in centimeters

% display(['width will be ' num2str(wdth) 'cm'])
% display(['height will be ' num2str(hght) 'cm'])

set(gcf, 'windowStyle', 'normal')
set(gcf, 'PaperUnits', 'centimeters')
xSize = 16;
ySize = 12;

if length(varargin)
    xSize = varargin{1};
    if length(varargin)>1
         ySize = varargin{2};
    end
end

xLeft = (21-xSize)/2; yTop = (30-ySize)/2;
set(gcf,'PaperPosition',[xLeft yTop xSize ySize])
set(gcf,'Position',[0 0 xSize*50 ySize*50])