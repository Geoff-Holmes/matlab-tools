function result = grhShowMats(varargin)

% show image of all .mat files in cwd in turn

result = 1;

display('displaying .mat files in:')
display(pwd)
figure
pse = length(varargin);
if pse, pse = varargin{1}; end

images = dir('*.mat');

for k = 1:length(images)
    
    tic
    
    try
        x = importdata(images(k).name);
        
        if isstruct(x)
            xstruct = x;
            y = fieldnames(xstruct);
            counter = 1;
            while ~isnumeric(x) & counter <= length(y)
                x = getfield(xstruct, y{counter});
                counter = counter + 1;
            end
        end
        
        if size(x,3) ~=1 || size(x,3) ~=3
            x = mean(x,3);
        end
        imagesc(x)
        title([pwd '/' images(k).name], 'interpreter', 'none')
    catch Ex
        display([images(k).name ' : ' Ex.identifier])
        
    end
    
    drawnow
    
    
    if pse
        if toc<pse
        pause(pse)
        end
    else
        pause()
    end
    
end

if exist('Ex'), result = Ex; end