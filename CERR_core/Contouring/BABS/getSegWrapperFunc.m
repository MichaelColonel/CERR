function functionNameC = getSegWrapperFunc(condaEnvListC,algorithmC)
% function functionNameC = getSegWrapperFunc(condaEnvListC,algorithmC)
%
% This function returns the names of wrapper functions for the input
% algorithms and conda environments.
%
% APA, 3/2/2021

numAlgoritms = length(algorithmC);
functionNameC = cell(1,numAlgoritms);
for algoNum = 1:numAlgoritms
    switch upper(algorithmC{algoNum})
        case 'CT_ATRIA_DEEPLAB'
            functionNameC{algoNum} = fullfile(condaEnvListC{algoNum},...
                'CT_Heart_DeepLab','model_wrapper','CT_Atria_DeepLab',...
                'runSegAtria.py');
            
        case 'CT_PERICARDIUM_DEEPLAB'
            functionNameC{algoNum} = fullfile(condaEnvListC{algoNum},...
                'CT_Heart_DeepLab','model_wrapper','CT_Pericardium_DeepLab',...
                'runSegPericardium.py');
            
        case 'CT_VENTRICLES_DEEPLAB'
            functionNameC{algoNum} = fullfile(condaEnvListC{algoNum},...
                'CT_Heart_DeepLab','model_wrapper','CT_Ventricles_DeepLab',...
                'runSegVentricles.py');
            
        case 'CT_HEARTSTRUCTURE_DEEPLAB'
            functionNameC{algoNum} = fullfile(condaEnvListC{algoNum},...
                'CT_Heart_DeepLab','model_wrapper','CT_HeartStructure_DeepLab',...
                'runSegHeartStructure.py');
            
        case 'CT_HEARTSUBSTRUCTURES_DEEPLAB'
            functionNameC{algoNum} = fullfile(condaEnvListC{algoNum},...
                'CT_Heart_DeepLab','model_wrapper','CT_HeartSubStructures_DeepLab',...
                'runSegHeartSubStructures.py');
            
        case 'CT_CHEWINGSTRUCTURES_DEEPLABV3'
            
        case 'CT_PHARYNGEALCONSTRICTOR_DEEPLABV3'
            
        case 'CT_HEADANDNECK_SELFATTENTION'
            
        case 'CT_LARYNX_DEEPLABV3'
            
        case 'CT_LUNG_INCRMRRN'
            
        case 'MR_LUNGNODULES_TUMORAWARE'
            
        case 'MR_PROSTATE_DEEPLAB'
            
        case 'MRCT_BRAINMETS_VNET'
                       
    end
    
end


