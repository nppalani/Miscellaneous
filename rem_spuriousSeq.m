fileID = fopen('badseq.txt');

for i = 1:length(illselfblast)
 
  %  if isempty(strfind(illbc(i).Sequence,'CATATG')) == 0
     %  illbclist(i).Sequence = 'AAAAAAAAAAAAAAA'; 
   % end
   for j = 1:length(ill
   if ismember(illbcClean(i).Header, illselfblast.qid) == 0
        fprintf(fileID,'%s \r\n',illbcClean(i).header);
   end
   
end
  fclose(fileID);