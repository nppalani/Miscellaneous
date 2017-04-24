% for i = 1:length(mcherry_compress2)
%     mcherry_compress2(i).position = mcherry_compress2(i).position + 5;
%     
% end


% for i = 1:length(redfp(1).Sequence)
%     gfplist(i).aam = redfp(1).Sequence(i);
% end


% for i = 1:length(mcherry_ddg)
%     
%     for j = 1:length(intresi)
%         
%         if mcherry_ddg(i).position == intresi(j).position
%             mcherry_ddg(i).int_residue = intresi(j).intresidue;
%         end
%     end
% end
% 
for i = 1:length(dsred)
    dsred(i).aaint = aa2int(dsred(i).MUT_RES);
end

