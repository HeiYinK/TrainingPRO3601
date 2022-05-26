IMPORT $,STD;

Crimes := $.optimized_tarefa5.File;
profileResults := STD.DataPatterns.Profile(Crimes);
OUTPUT(profileResults, ALL, NAMED('profileResults'));
// fill rate mostra a porcentagem de preenchimento, 100=preenchimento total, 98.95 quer dizer tem campos em branco

Crimes := $.optimized_tarefa5.File;
OutRec := RECORD
Crimes.year;
TotalPerYear := COUNT(GROUP);
END;

MyTable := TABLE(Crimes(year BETWEEN 2010 AND 2020),OutRec,Year);
OUTPUT(MyTable);
MyAvg := AVE(MyTable,TotalPerYear);
OUTPUT(ROUND(MyAvg)
