% PacDataIndex = BioIndexedFile('FASTA','C:\TestDump\2Cell_5passQ80_ReadsofInsert.fasta');
%fastastore = fastaread('C:\TestDump\fastatestfile.fasta');
% too slow 
for i = 1:length(fastastore)
     
     blastoutput(i) = blastlocal('InputQuery',fastastore(i),'Program','blastn','Database','mCherryRef.fasta');
     
     if strncmp('Plus/Minus',blastoutput(i).Hits.HSPs(1).Strand,10) == 1
         fastastore(i).Sequence = seqrcomplement(fastastore(i).Sequence);
     end
     
end

 warnState = warning; %Save the current warning state
    warning('off','Bioinfo:fastawrite:AppendToFile'); 
    fastawrite('C:\TestDump\PacReformat.fasta',fastastore);
    warning(warnState) ; %Reset warning state to previous settings
         
         