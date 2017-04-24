for i=1:length(transOut)
    if isempty(transOut(i).Sequence)==1
        x(qi).Header =transOut(i).Header;
        qi=qi+1;
    end
end

     