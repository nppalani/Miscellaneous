

for i = 1:length(conseqs)
    orfframe(i).seqcount = seqshoworfs(conseqs(i).cs,'minimumlength',224,'nodisplay','true'); 
    % 95% sizecutoff of mCherry
    for j=1:3
        
       if isempty(orfframe(i).seqcount(j).Start) == 0
            transVarNT = conseqs(i).cs(orfframe(i).seqcount(j).Start:orfframe(i).seqcount(j).Stop);
           transVarProt = nt2aa(transVarNT);
                
        end
    end
    transOut(i).Header = conseqs(i).plate;
    transOut(i).Sequence = transVarProt;
    transOut(i).SeqNT = transVarNT;
    transVarNT = '';
    transVarProt = '';
end
