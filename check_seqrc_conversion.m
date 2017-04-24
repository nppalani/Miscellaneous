
compStr = 'GACT';

parfor i = 1:pacconverted.NumEntries
    tempstr = read(pacconverted, i);
    if (strncmpi(tempstr.Sequence,compStr,4)) == 0
       seqin(i) = 1;
    end
    

end

