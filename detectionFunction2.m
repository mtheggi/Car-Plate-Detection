%  this function to compare between the segmented image and the stored
%  dataset 
%karim Ibrahim Mostafa _ ID:1200892 _ Karim.Hamed04@eng-st.cu.edu.eg 

function letter=detectionFunction2(segemanted_image )
% % بستخدما عشان اقارن مبين الصورة الى انا طلعتها و الصورة الى موجهودة عنى 
load NewTemplates
segemanted_image = imresize(segemanted_image,[42 24]); 
correlation_array =[ ];
e=1;
for i=1:length(NewTemplates)
    cor=corr2(NewTemplates{1,i},segemanted_image); % calculate the corelation between the saved data and the segmanted image 
    correlation_array(e)=[cor];
    e=e+1;
end

[M ,ind] = max(correlation_array);
display(ind);
if ind==1 || ind==2
    letter='A';
elseif ind==3 || ind==4
    letter='B';
elseif ind==5
    letter='C';
elseif ind==6 || ind==7
    letter='D';
elseif ind==8
    letter='E';
elseif ind==9
    letter='F';
elseif ind==10
    letter='G';
elseif ind==11
    letter='H';
elseif ind==12
    letter='I';
elseif ind==13
    letter='J';
elseif ind==14
    letter='K';
elseif ind==15
    letter='L';
elseif ind==16
    letter='M';
elseif ind==17
    letter='N';
elseif ind==18 || ind==19
    letter='O';
elseif ind==20 || ind==21
    letter='P';
elseif ind==22 || ind==23
    letter='Q';
elseif ind==24 || ind==25
    letter='R';
elseif ind==26
    letter='S';
elseif ind==27
    letter='T';
elseif ind==28
    letter='U';
elseif ind==29
    letter='V';
elseif ind==30
    letter='W';
elseif ind==31
    letter='X';
elseif ind==32
    letter='Y';
elseif ind==33
    letter='Z';
elseif ind==34
    letter='1';
elseif ind==35
    letter='2';
elseif ind==36
    letter='3';
elseif ind==37 || ind==38
    letter='4';
elseif ind==39
    letter='5';
elseif ind==40 || ind==41 || ind==42
    letter='6';
elseif ind==43
    letter='7';
elseif ind==44 || ind==45
    letter='8';
elseif ind==46 || ind==47 || ind==48
    letter='9';
else
    letter='0';
end
end 