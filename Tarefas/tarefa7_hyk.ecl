IMPORT $;

	New_Layout_People_RecID := RECORD
	UNSIGNED4 RecID;
	STRING dia;
	STRING hora ;
	$.crime_tarefa6.Layout;
END;

New_Layout_People_RecID IDRecs($.crime_tarefa6.Layout L,INTEGER C) := TRANSFORM
	SELF.RecID := C;
	SELF.dia := Le.date[10]
	SELF.hora:= Le.date[12..19]
	
	SELF := Le;
END; 

new_dt UID_CRIMES := PROJECT($.crime_tarefa6,MyTransf(LEFT,COUNTER));
new_dt;