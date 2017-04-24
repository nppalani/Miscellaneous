
bccutoffStr = 'CATATGGC';
bc = cell(conseqind.NumEntries,1);
parfor i = 1:conseqind.NumEntries
    tempstr = read(conseqind, i);
    k = strfind(tempstr.Sequence,bccutoffStr);
    bc(i,1)= cellstr(tempstr.Sequence((k-17):(k-1)));
end

