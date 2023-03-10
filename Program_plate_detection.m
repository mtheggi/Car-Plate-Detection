%  car_ plate detection 
clc ;
clear all ;
close all ;
[img_title , path] = uigetfile('*.*');
img_name = strcat(path, img_title);
img = imread(img_name)  ; 
img_gray = rgb2gray(img);
img_binary  = imbinarize(img_gray);
img_edge = edge(img_binary, 'canny');
img_fill = imfill(img_edge,'holes');
img_clear = imclearborder(img_fill,4) ;
se= strel('diamond',4);
se2= strel('disk',2);
img_eroded1 = imerode(img_clear, se);
img_eroded2 = imerode(img_eroded1,se2 );
% determine and crop the region of car plate 
img_properties = regionprops(img_eroded2 ,'BoundingBox','Area');
area = img_properties.Area;
number_of_objects = numel(img_properties);
max_area= area;
boundingBox = img_properties.BoundingBox;
for i=1:number_of_objects
   if max_area<img_properties(i).Area
       max_area=img_properties(i).Area;
       boundingBox=img_properties(i).BoundingBox;
   end
end
img_crop = imcrop(img_eroded2 , boundingBox) ;
img_crop2 = imcrop(img_gray , boundingBox);
img_number = immultiply(img_crop ,img_crop2) ; 
img_binary2 = imbinarize(img_number);
img_binary2 = ~img_binary2;
img_binary3= bwareaopen(img_binary2, 400);
img_clear2 = imclearborder(img_binary2,1)
img_binary4= imcrop(img_binary3);
imshow(img_binary4);
final_image=regionprops(img_binary4 ,'BoundingBox','Area', 'Image'); 
mumber_of_objects2 = numel(final_image);
plate_number = [];
for i=1:mumber_of_objects2

       letter = detectionFunction2(final_image(i).Image); 
   plate_number=[ plate_number letter ]; 
    

end
 msgbox(sprintf('your car number is %s' , plate_number));
 