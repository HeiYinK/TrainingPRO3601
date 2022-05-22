IMPORT $,STD;

Crimes := $.Tarefas.File_crime_raw.File;
bestrecord     := STD.DataPatterns.BestRecordStructure(Crimes);
OUTPUT(bestrecord, ALL, NAMED('BestRecord'));