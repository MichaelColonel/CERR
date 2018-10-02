function anonBeamsS = initializeAnonBeams()
%
% function anonBeamsS = initializeAnonBeams()
%
% Defines the anonymous beams data structure.
%
% The following three types of anonymization are allowed per field:
% 1. Remove a field: don't list it here.
% 2. Keep the value as is: list it as ''.
% 3. Allow only the specific values: list those values within a cell array.
%    If no match is found, a default anonymous string will be inserted.
%
% APA, 1/24/2018

anonDoseRefSeqS = struct(...
           'DoseReferenceNumber', 'keep', ...
              'DoseReferenceUID', 'keep', ...
    'DoseReferenceStructureType', {{'SITE'}}, ...
      'DoseReferenceDescription', {{'T_RTLUNG_MED', 'T_LTLUNG_MED', 'T_RTLUNG_LAT', 'T_TTLUNG_LAT'}}, ...
             'DoseReferenceType', {{'TARGET'}}, ...
           'DeliveryMaximumDose', 'keep', ...
        'TargetPrescriptionDose', 'keep', ...
             'TargetMaximumDose', 'keep' ...
    );
anonRefBeamSeqS = struct(...
                     'BeamDose', 'keep', ...
                 'BeamMeterset', 'keep', ...
         'ReferencedBeamNumber', 'keep' ...
    );

anonFractGroupSeqS = struct(...
    'FractionGroupNumber', 'keep', ...
    'NumberofFractionsPlanned', 'keep', ...
    'NumberofBeams', 'keep', ...
    'NumberofBrachyApplicationSetups', 'keep', ...
     'ReferencedBeamSequence', anonRefBeamSeqS ... 
             ); 
anonBeamLimitingDeviceSeqS = struct(...
        'RTBeamLimitingDeviceType', {{'ASYMX'}}, ...
        'NumberofLeafJawPairs', 'keep' ...
             );
anonBeamLimitingDevicePositionSeqS = struct(...
        'RTBeamLimitingDeviceType', {{'ASYMX'}}, ...
        'LeafJawPositions', 'keep' ...
             );
anonRefDoseRefSeqS = struct(...
        'CumulativeDoseReferenceCoefficient', 'keep', ...
        'ReferencedDoseReferenceNumber', 'keep' ...
    );
anonControlPointSeqS = struct(...
                          'ControlPointIndex', 'keep', ...
                      'NominalBeamEnergy', 'keep', ...
                          'DoseRateSet', 'keep', ...
     'BeamLimitingDevicePositionSequence', anonBeamLimitingDevicePositionSeqS, ...
                            'GantryAngle', 'keep', ...
                'GantryRotationDirection', {{'NONE'}}, ...
                'BeamLimitingDeviceAngle', 'keep', ...
    'BeamLimitingDeviceRotationDirection', {{'NONE'}}, ...
                    'PatientSupportAngle', 'keep', ...
        'PatientSupportRotationDirection', {{'NONE'}}, ...
                 'TableTopEccentricAngle', 'keep', ...
     'TableTopEccentricRotationDirection', {{'NONE'}}, ...
               'TableTopVerticalPosition', 'keep', ...
           'TableTopLongitudinalPosition', 'keep', ...
                'TableTopLateralPosition', 'keep', ...
                      'IsocenterPosition', 'keep', ...
               'CumulativeMetersetWeight', 'keep', ...
                     'TableTopPitchAngle', 'keep', ...
         'TableTopPitchRotationDirection', {{'NONE'}}, ...
                      'TableTopRollAngle', 'keep', ...
          'TableTopRollRotationDirection', {{'NONE'}}, ...
        'ReferencedDoseReferenceSequence', anonRefDoseRefSeqS ...
    );
anonBeamSeqS = struct(...
                      'Manufacturer', {{'Varian Medical Systems'}}, ...
             'PrimaryDosimeterUnit', {{'MU'}}, ...
               'SourceAxisDistance', 'keep', ...
       'BeamLimitingDeviceSequence', anonBeamLimitingDeviceSeqS, ...
                       'BeamNumber', 'keep', ...
                         'BeamType', {{'DYNAMIC'}}, ... 
                    'RadiationType', {{'PHOTON'}}, ... 
            'TreatmentDeliveryType', {{'TREATMENT'}}, ... 
                   'NumberofWedges', 'keep', ...
             'NumberofCompensators', 'keep', ...
                     'NumberofBoli', 'keep', ...
                   'NumberofBlocks', 'keep', ...
    'FinalCumulativeMetersetWeight', 'keep', ...
            'NumberofControlPoints', 'keep', ...
             'ControlPointSequence', anonControlPointSeqS, ...
     'ReferencedPatientSetupNumber', 'keep' ...  
    );
anonPatientSeqS = struct(...
           'PatientPosition', {{'HFS','HFP','FFS','FFP'}}, ...
           'PatientSetupNumber', 'keep' ...
);
anonRefStructureSetSeqS = struct(...
       'ReferencedSOPClassUID', 'keep', ...
    'ReferencedSOPInstanceUID', 'keep' ...
    );
anonRefDoseSeqS = struct(...
       'ReferencedSOPClassUID', 'keep', ...
    'ReferencedSOPInstanceUID', 'keep' ...
    );
anonBeamsS = struct( ...
                       'RTPlanLabel', {{'RTLUNG_MED','RTLUNG_LAT','LTLUNG_MED','LTLUNG_LAT'}}, ...
                    'RTPlanGeometry', {{'PATIENT'}}, ...
                    'TreatmentSites', {{'LUNG'}}, ...
             'DoseReferenceSequence', anonDoseRefSeqS, ...
             'FractionGroupSequence', anonFractGroupSeqS, ...
                      'BeamSequence', anonBeamSeqS, ...
              'PatientSetupSequence', anonPatientSeqS, ...
           'ReferencedRTGroupLength', 'keep', ...
    'ReferencedStructureSetSequence', anonRefStructureSetSeqS, ...
           'ReferencedDoseSequence', anonRefDoseSeqS, ...
                 'ReviewGroupLength', 'keep', ...
                    'ApprovalStatus', {{'UNAPPROVED','APPROVED'}}, ... 
                    'SOPInstanceUID', 'keep', ...
                           'BeamUID', 'keep' ...
);
