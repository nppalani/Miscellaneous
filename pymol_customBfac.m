
% import a two column sheet (residue position & arbitrary value) as a table
% and convert to structure (table2struct). Import pdb as structure
% (mcherpdb = getpdb('2H5Q'). Run this script to replace b factor
% value in pdb with arbitrary value. Write new pdb to file 
% pdbwrite('new_pdb.pdb',testpdbstruct);



for i = 1:length(dsred_compress)
    for j = 1:length(mcherpdb.Model.Atom)
        
        if double(mcherpdb.Model.Atom(j).chainID) == 65 && mcherpdb.Model.Atom(j).resSeq == dsred_compress(i).position
            mcherpdb.Model.Atom(j).tempFactor = dsred_compress(i).averg ;
            
        end
    end
end
