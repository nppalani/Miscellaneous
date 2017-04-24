i=1;

% for i = i:length(crispr)
%     crisprmap(i).Sequence = crispr(i).Sequence;
%     crisprmap(i).seqnum = double(crispr(i).Sequence);
%     
%     
% end

% 
% for i = 1:4136
%     crisprdb(i).genename = oligos(i).refgene;
%     crisprdb(i).ecogene = sprintf('EG%d',oligos(i).ecogene);
%     crisprdb(i).seqnum = double(upper(oligos(i).crisprseq));
% end
i=1;j=1;
for i = 1:100
    
       for j=1:length(crisprdb)
        if isequal(crisprdb(j).seqnum,crisprmap(i).seqnum)==0
            crisprmap(i).genename = crisprdb(j).genename;
            crisprmap(i).ecogene = crisprdb(j).ecogene;
            
        end
       end
       
end

            
