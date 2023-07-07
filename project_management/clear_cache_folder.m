function clear_cache_folder()
eval("clear functions;");
proj = currentProject;

cd(proj.RootFolder + filesep + "cache");
try
    rmdir('*','s');
catch
    % Do Nothing
end

list = dir;
for i = 1:numel(list)
    if ~strcmp(list(i).name, 'readme_cache.txt')
        delete(list(i).name);
    end
end

eval("clc;");

end
