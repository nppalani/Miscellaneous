
compStr = 'GACT';

parfor i = 1:pacdata.NumEntries
    tempstr = read(pacdata, i);
    if (strncmpi(tempstr.Sequence,compStr,4)) == 0
        tempstr.Sequence = seqrcomplement(tempstr.Sequence);
    end
    
    warnState = warning; %Save the current warning state
    warning('off','Bioinfo:fastawrite:AppendToFile'); 
    fastawrite('C:\TestDump\pacstreamout.txt',tempstr);
    warning(warnState) ; %Reset warning state to previous settings
end

