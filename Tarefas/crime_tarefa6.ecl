IMPORT $,STD;

Crimes := $.optimized_tarefa5.File;
profileResults := STD.DataPatterns.Profile(Crimes);
OUTPUT(profileResults, ALL, NAMED('profileResults'));
// fill rate mostra a porcentagem de preenchimento, 100=preenchimento total, 98.95 quer dizer tem campos em branco

// Declaracao DATASET
//ds := DATASET(Crimes);
OUTPUT(ds);

Filtragem e tabulaçao de datasets
 recset := ds(date[]<65);
 recset; //Equivale a: OUTPUT(recset);

// recset := ds(Age<65,Gender='M');
// recset;

// IsSeniorMale := ds.Age>65 AND ds.Gender='M'; //definição do tipo "boolean"
// recset := ds(IsSeniorMale);
// recset;

// SetGender := ['M','F'];  //definicao do tipo "set"
// recset := ds(Gender IN SetGender);
// recset;						// definição do tipo "recordset"
// COUNT(recset);    //Equivale a: OUTPUT(COUNT(recset));

 rec2 := RECORD
  ds.date;
  cnt := COUNT(GROUP);
	END;

 crosstab := TABLE(ds,rec2,date[7..10]);
 crosstab;

 avg := AVE(crosstab,cnt);
 avg;