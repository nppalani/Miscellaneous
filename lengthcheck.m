for i = 1:length(seqin)
    
    tmv = seqin(i).Header;
    
    lencheck(i) = tmv((end-60):end);
    
end
