function dm = calcMeanDDG(rfp)
% function to calculate mean values for predicted ddG from mCSM. Import
% mCSM output for protein-scale exhaustive single mutation. Import as table.
% Run this function with the table as input to calculate the mean ddG for
% each position. 


k=1;
x= size(rfp);
for i = 1:19:x(1,1)
        
  dm(k).position = rfp.RES_POS(i);
  dm(k).averg = mean(rfp.PRED_DDG(i:i+18));
  k= k+1;
end

end
