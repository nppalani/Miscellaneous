function fastqtocsv(infastq)

[status, cmdout]= system(['wc -l ',infastq]);
  if(status~=1)
      scanCell = textscan(cmdout,'%u %s');
      lineCount = scanCell{1};
      csvname = infastq(1:(end-6));
      outfile=[csvname '.csv'];
      i=1;
     for i=1:1000000:(lineCount/4)
        somestruct = fastqread(infastq,'blockread',[i i+999999]);
        Sequence = {somestruct.Sequence}.';
        
       clear somestruct;
        
       temphold(:,1)=cellfun(@(x) x(1:30),Sequence,'UniformOutput',false); 
       temphold(:,2)=cellfun(@(x) x(67:78),Sequence,'UniformOutput',false);
        
       cell2csv(outfile,temphold);
       clear temphold;
      
      end
         
        
      
 else
      fprintf(1,'Failed to find line count of %s\n',infastq); 
  
  end
  
end
