fprintf('Select the input image folder:\n')
folder_img = uigetdir;
listing = dir(folder_img);

for i = 1:size(listing,1)
    [pathstr,name,ext] = fileparts(listing(i).name);
    if strcmpi(ext,'.jpg') || strcmpi(ext,'.png')
        Img_name= [name ext];
        a=imread(Img_name);
        imshow(a);
        imname = [name '.pdf'];
        exportgraphics(gcf,imname,'Resolution',1200)
    end
end