for i = 1:length(seqin)
    for j = 1:length(ssinfo)
        
        if strcmpi(seqin(i).Header, ssinfo(j).fashead) == 0
            continue
        
        else ssinfo(j).Sequence = seqin(i).Sequence;
            %elseif strcmpi(ssinfo(j).sstrand, 'minus') == 1
           % seqin(i).Sequence = seqrcomplement(seqin(i).Sequence);
            break          
         end
    end
end

       