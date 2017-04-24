function dm = ddgmean(rfp)

k=1;
x= size(rfp)
for i = 1:19:x(1,1)
    
    
 %dm(k).position = rfp.RES_POS(i);
  dm(k).averg = mean(rfp.PRED_DDG(i:i+18));
  k= k+1;
end

end
