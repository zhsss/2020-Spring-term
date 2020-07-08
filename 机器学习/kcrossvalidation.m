function [Train1,Test1]=kcrossvalidation(data1)

k=10;

[m,n]=size(data1);

a=50;
b=50;
c=50;

class1=3;


s=a/k;

data2(:,:,1)=data1(1:50,:);
data2(:,:,2)=data1(51:100,:);
data2(:,:,3)=data1(101:150,:);



for i=1:class1

    
    f1=randperm(a);

    for j=1:k
        
        
        f2=(s*(j-1)+1):(s*j);
        
        f3=f1(f2);
        
        f4=setdiff(f1,f3);
        
        data3=data2(:,:,i);
        
        train1=data3(f4,:);
        test1=data3(f3,:);
        
        Train1(((i-1)*45+1):(i*45),:,j)=train1;
        Test1(((i-1)*5+1):(i*5),:,j)=test1;
        
    end
    
end 
        


