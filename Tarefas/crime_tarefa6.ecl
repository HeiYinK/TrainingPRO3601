IMPORT $,STD;

Crimes := $.optimized_tarefa5.File;
profileResults := STD.DataPatterns.Profile(Crimes);
OUTPUT(profileResults, ALL, NAMED('profileResults'));
// fill rate mostra a porcentagem de preenchimento, 100=preenchimento total, 98.95 quer dizer tem campos em branco

// Declaracao DATASET
//ds := DATASET(Crimes);
OUTPUT(ds);

Filtragem e tabulaçao de datasets
 recset := ds(date[7..10]=2010);
 recset; //

// recset2 := ds(date[7..10]=2020);
// recset;


 rec2 := RECORD
  ds.date;
  cnt := COUNT(GROUP);
	END;

 crosstab := TABLE(ds,rec2,date[7..10]);
 crosstab;

 avg := AVE(crosstab,cnt);
 avg;
