function rate=CalRate(data,labels,k)
    rowLength=size(data,1);
    rCounts=0;
    for i=1:rowLength
        label=labels(i,1);
        test=data(i,:);
        data2=data;
        labels2=labels;
        data2(i,:)=[];
        labels2(i,:)=[];
        if(label==knn(test,data2,k,labels2))
            rCounts=rCounts+1;
        end
    end
    rate=rCounts/rowLength;
end