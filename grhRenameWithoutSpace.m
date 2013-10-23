function renameWithoutSpace()


% get files in cwd
dirTop = dir;

% ignore . and .. and get files in other folders
for i = 3:length(dirTop)
    dirTop(i).name
    if strfind(dirTop(i).name, 'xls')
        display('not processing'); continue; end 
    dirMid = dir(dirTop(i).name);
    
% ignore . and .. and get files in other folders
    for j = 3:length(dirMid)
        dirMid(j).name
        dirBot = dir([dirTop(i).name '/' dirMid(j).name]);
        
% ignore . and .. and get files in other folders
        for k = 3:length(dirBot)
            dirBot(k).name
            inpt = [dirTop(i).name '/' dirMid(j).name '/' dirBot(k).name]
            if strfind(dirBot(k).name, ' ')
                movefile(inpt, [dirTop(i).name '/' dirMid(j).name '/' strrep(dirBot(k).name, ' ', '_')])
            end
        end
        if strfind(dirMid(j).name, ' ')
            movefile([dirTop(i).name '/' dirMid(j).name], [dirTop(i).name '/' strrep(dirMid(j).name, ' ', '_')])
        end
    end
    if strfind(dirTop(i).name, ' ')
        movefile(dirTop(i).name, strrep(dirTop(i).name, ' ', '_'))
    end
    
end


    