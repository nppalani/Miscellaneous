
% import a two column sheet (residue position & arbitrary value) as a table
% and convert to structure (table2struct). Import pdb as structure
% (mcherpdb = getpdb('2H5Q'). Run this script to replace b factor
% value in pdb with arbitrary value. Write new pdb to file 
% pdbwrite('new_pdb.pdb',testpdbstruct);

% no need for this script. Directly do in pymol
% using select resn gly

    for j = 1:length(mcherpdb.Model.Atom)
        
             
            if mcherpdb.Model.Atom(j).resName == 'GLY' 
              
                    mcherpdb.Model.Atom(j).tempFactor = 100;
                else
                    mcherpdb.Model.Atom(j).tempFactor = 0;
                %if mcherpdb.Model.Atom(j).resSeq == xb62a(i).resid
           % mcherpdb.Model.Atom(j).tempFactor = xb62a(i).bfac ;
                end 
        
    end

