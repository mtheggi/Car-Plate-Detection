% construction of dataset of the letters and numbers  
% made by : Nour-Eldeen  Tarek bahaa _ ID :1200448 _ Nour.mohamed02@eng-st.cu.edu.eg
A=imread('DATASET/A.bmp');
B=imread('DATASET/B.bmp');
C=imread('DATASET/C.bmp');
D=imread('DATASET/D.bmp');
E=imread('DATASET/E.bmp');
F=imread('DATASET/F.bmp');
G=imread('DATASET/G.bmp');
H=imread('DATASET/H.bmp');
I=imread('DATASET/I.bmp');
J=imread('DATASET/J.bmp');
K=imread('DATASET/K.bmp');
L=imread('DATASET/L.bmp');
M=imread('DATASET/M.bmp');
N=imread('DATASET/N.bmp');
O=imread('DATASET/O.bmp');
P=imread('DATASET/P.bmp');
Q=imread('DATASET/Q.bmp');
R=imread('DATASET/R.bmp');
S=imread('DATASET/S.bmp');
T=imread('DATASET/T.bmp');
U=imread('DATASET/U.bmp');
V=imread('DATASET/V.bmp');
W=imread('DATASET/W.bmp');
X=imread('DATASET/X.bmp');
Y=imread('DATASET/Y.bmp');
Z=imread('DATASET/Z.bmp');
one=imread('DATASET/1.bmp');
two=imread('DATASET/2.bmp');
three=imread('DATASET/3.bmp');
four=imread('DATASET/4.bmp');
five=imread('DATASET/5.bmp'); 
six=imread('DATASET/6.bmp');
seven=imread('DATASET/7.bmp');
eight=imread('DATASET/8.bmp');
nine=imread('DATASET/9.bmp'); 
zero=imread('DATASET/0.bmp');
letters =[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z];
numbers=[one two three four five six seven eight nine zero];
NewTemplates=[letter number];
save ('NewTemplates','NewTemplates');