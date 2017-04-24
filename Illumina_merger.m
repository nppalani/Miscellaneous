for i = 1:3
    TempObj = BioRead(Files(i).name);
    
    

    write(TempObj, 'C:\TestDump\IlluminaCombine.fastq','Format','FASTQ');
   
    
    
end
