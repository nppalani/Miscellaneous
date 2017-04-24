
warnState = warning; %Save the current warning state
    warning('off','Bioinfo:fastawrite:AppendToFile'); 

for i = 1:length(Sequence)
   fastawrite('pbccs2_sizeselect.fasta',sprintf('pbseq_%d',i),Sequence(i,1));
 % illbclist(i).Sequence = strcat('ACGAT',illbclist(i).Sequence);
end


     warning(warnState) ; %Reset warning state to previous settings