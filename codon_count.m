
% script to calculate codon frequency from the coding sequences of an
% organism's genome. 
% import organism's genome using getgenbank function.
% change 'ecoli' below to structure name into which the genbank file has been
% imported.

codcount.AAA= 0; codcount.AAC= 0; codcount.AAG= 0; codcount.AAT= 0; codcount.ACA= 0;
 codcount.ACC= 0; codcount.ACG= 0; codcount.ACT= 0; codcount.AGA= 0; codcount.AGC= 0;
 codcount.AGG= 0; codcount.AGT= 0; codcount.ATA= 0; codcount.ATC= 0; codcount.ATG= 0;
 codcount.ATT= 0; codcount.CAA= 0; codcount.CAC= 0; codcount.CAG= 0; codcount.CAT= 0;
 codcount.CCA= 0; codcount.CCC= 0; codcount.CCG= 0; codcount.CCT= 0; codcount.CGA= 0;
 codcount.CGC= 0; codcount.CGG= 0; codcount.CGT= 0; codcount.CTA= 0; codcount.CTC= 0;
 codcount.CTG= 0; codcount.CTT= 0; codcount.GAA= 0; codcount.GAC= 0; codcount.GAG= 0;
 codcount.GAT= 0; codcount.GCA= 0; codcount.GCC= 0; codcount.GCG= 0; codcount.GCT= 0;
 codcount.GGA= 0; codcount.GGC= 0; codcount.GGG= 0; codcount.GGT= 0; codcount.GTA= 0;
 codcount.GTC= 0; codcount.GTG= 0; codcount.GTT= 0; codcount.TAA= 0; codcount.TAC= 0;
 codcount.TAG= 0; codcount.TAT= 0; codcount.TCA= 0; codcount.TCC= 0; codcount.TCG= 0;
 codcount.TCT= 0; codcount.TGA= 0; codcount.TGC= 0; codcount.TGG= 0; codcount.TGT= 0;
 codcount.TTA= 0; codcount.TTC= 0; codcount.TTG= 0; codcount.TTT= 0;

i =0; j=0;

for i = 1:length(ecoli.CDS)
    
    if ecoli.CDS(i).indices(1) > ecoli.CDS(i).indices(2)
        seqrev = seqrcomplement(ecoli.Sequence(ecoli.CDS(i).indices(2):ecoli.CDS(i).indices(1)));
        seqtemp = codoncount(seqrev);
    else
        seqtemp = codoncount(ecoli.Sequence(ecoli.CDS(i).indices(1):ecoli.CDS(i).indices(2)));
    end
      
 codcount.AAA = codcount.AAA + seqtemp.AAA;
 codcount.AAC =  codcount.AAC +  seqtemp.AAC;
 codcount.AAG =  codcount.AAG +  seqtemp.AAG;
 codcount.AAT =  codcount.AAT +  seqtemp.AAT;
 codcount.ACA =  codcount.ACA +  seqtemp.ACA;
 codcount.ACC =  codcount.ACC +  seqtemp.ACC;
 codcount.ACG =  codcount.ACG +  seqtemp.ACG;
 codcount.ACT =  codcount.ACT +  seqtemp.ACT;
 codcount.AGA =  codcount.AGA +  seqtemp.AGA;
 codcount.AGC =  codcount.AGC +  seqtemp.AGC;
 codcount.AGG =  codcount.AGG +  seqtemp.AGG;
 codcount.AGT =  codcount.AGT +  seqtemp.AGT;
 codcount.ATA =  codcount.ATA +  seqtemp.ATA;
 codcount.ATC =  codcount.ATC +  seqtemp.ATC;
 codcount.ATG =  codcount.ATG +  seqtemp.ATG;
 codcount.ATT =  codcount.ATT +  seqtemp.ATT;
 codcount.CAA =  codcount.CAA +  seqtemp.CAA;
 codcount.CAC =  codcount.CAC +  seqtemp.CAC;
 codcount.CAG =  codcount.CAG +  seqtemp.CAG;
 codcount.CAT =  codcount.CAT +  seqtemp.CAT;
 codcount.CCA =  codcount.CCA +  seqtemp.CCA;
 codcount.CCC =  codcount.CCC +  seqtemp.CCC;
 codcount.CCG =  codcount.CCG +  seqtemp.CCG;
 codcount.CCT =  codcount.CCT +  seqtemp.CCT;
 codcount.CGA =  codcount.CGA +  seqtemp.CGA;
 codcount.CGC =  codcount.CGC +  seqtemp.CGC;
 codcount.CGG =  codcount.CGG +  seqtemp.CGG;
 codcount.CGT =  codcount.CGT +  seqtemp.CGT;
 codcount.CTA =  codcount.CTA +  seqtemp.CTA;
 codcount.CTC =  codcount.CTC +  seqtemp.CTC;
 codcount.CTG =  codcount.CTG +  seqtemp.CTG;
 codcount.CTT =  codcount.CTT +  seqtemp.CTT;
 codcount.GAA =  codcount.GAA +  seqtemp.GAA;
 codcount.GAC =  codcount.GAC +  seqtemp.GAC;
 codcount.GAG =  codcount.GAG +  seqtemp.GAG;
 codcount.GAT =  codcount.GAT +  seqtemp.GAT;
 codcount.GCA =  codcount.GCA +  seqtemp.GCA;
 codcount.GCC =  codcount.GCC +  seqtemp.GCC;
 codcount.GCG =  codcount.GCG +  seqtemp.GCG;
 codcount.GCT =  codcount.GCT +  seqtemp.GCT;
 codcount.GGA =  codcount.GGA +  seqtemp.GGA;
 codcount.GGC =  codcount.GGC +  seqtemp.GGC;
 codcount.GGG =  codcount.GGG +  seqtemp.GGG;
 codcount.GGT =  codcount.GGT +  seqtemp.GGT;
 codcount.GTA =  codcount.GTA +  seqtemp.GTA;
 codcount.GTC =  codcount.GTC +  seqtemp.GTC;
 codcount.GTG =  codcount.GTG +  seqtemp.GTG;
 codcount.GTT =  codcount.GTT +  seqtemp.GTT;
 codcount.TAA =  codcount.TAA +  seqtemp.TAA;
 codcount.TAC =  codcount.TAC +  seqtemp.TAC;
 codcount.TAG =  codcount.TAG +  seqtemp.TAG;
 codcount.TAT =  codcount.TAT +  seqtemp.TAT;
 codcount.TCA =  codcount.TCA +  seqtemp.TCA;
 codcount.TCC =  codcount.TCC +  seqtemp.TCC;
 codcount.TCG =  codcount.TCG +  seqtemp.TCG;
 codcount.TCT =  codcount.TCT +  seqtemp.TCT;
 codcount.TGA =  codcount.TGA +  seqtemp.TGA;
 codcount.TGC =  codcount.TGC +  seqtemp.TGC;
 codcount.TGG =  codcount.TGG +  seqtemp.TGG;
 codcount.TGT =  codcount.TGT +  seqtemp.TGT;
 codcount.TTA =  codcount.TTA +  seqtemp.TTA;
 codcount.TTC =  codcount.TTC +  seqtemp.TTC;
 codcount.TTG =  codcount.TTG +  seqtemp.TTG;
 codcount.TTT =  codcount.TTT +  seqtemp.TTT;

end

 %get freq and codons for each amino (from codonbias function)
all_codons = fieldnames(codcount);
intAA = double(aa2int(nt2aa(cell2mat(all_codons'),'GENETICCODE', 1)))';
codoncount = cell2mat(struct2cell(codcount));
total = accumarray(intAA,codoncount,[26 1]);
freq = codoncount ./ total(intAA);
aminos = cellstr(aminolookup(int2aa(1:25)'));

% put into output struct
for j = 1:length(all_codons)
    
    codon_bias(j).Codon = all_codons(j);
    codon_bias(j).Aminoacid = nt2aa(codon_bias(j).Codon,'AlternativeStartCodons', false);
    codon_bias(j).Freq = freq(j);
end
    