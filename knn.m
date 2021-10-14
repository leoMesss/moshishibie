function type=knn(test,train,k,labels)
    L1=sum(abs(test-train),2);
    [B1,index]=sort(L1);
    lab=zeros(1,10);
    for i=1:k
        j=labels(index(i));
        lab(j+1)=lab(j+1)+1;
    end
    [B2,types]=sort(lab,'descend');
    type=types(1)-1;
end