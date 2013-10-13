part of two_files;


// ---------------------------------  exo 1 ---------------------------------//
isApalindrome(var phrase){
  var pointeurGauche,pointeurDroit;
  var cptGauche=0 , cptDroit=phrase.length-1;
  pointeurGauche=phrase[0];
  pointeurDroit=phrase[cptDroit];
  for(var i = 0 ; i < (phrase.length/2) ; i++){

    if( pointeurGauche==" "){
      cptGauche++;
    pointeurGauche=phrase[cptGauche];
    }


    if(pointeurDroit == " "){
      cptDroit--;
      pointeurDroit=phrase[cptDroit];
    }
    if(pointeurGauche != pointeurDroit)
      return false;
    cptDroit--;
    cptGauche++;
    pointeurGauche=phrase[cptGauche];
    pointeurDroit=phrase[cptDroit];
  }
  return true;
}

// ---------------------------------  exo 2 ---------------------------------//

calcule_age(var jour, var mois, var anne){
  var jouractuel=27;
  var moisactuel=09;
  var anneactuel=2013;
  var resulta_jour , resulta_mois , resulta_anne;

  if (jouractuel>=jour){
    resulta_jour=jouractuel-jour;
  }
  else{
    if(moisactuel== 1 || moisactuel== 3 || moisactuel== 5 || moisactuel== 7 || moisactuel== 8 || moisactuel== 10 || moisactuel== 12){
      jouractuel=jouractuel+31;
      moisactuel--;
      resulta_jour=jouractuel-jour;

    }
    if( moisactuel == 2){
      if(anneactuel%4==0)
        jouractuel=jouractuel+29;
      else
        jouractuel=jouractuel+28;
      moisactuel--;
      resulta_jour=jouractuel-jour;
    }
    else
      jouractuel=jouractuel+30;
    moisactuel--;
    resulta_jour=jouractuel-jour;
  }
    if (moisactuel >= mois)
      resulta_mois=mois-moisactuel;
    else {
      moisactuel=moisactuel+12;
      anneactuel--;
      resulta_mois=moisactuel-mois;
    }
    resulta_anne=anneactuel-anne;

    var somme=0;
    somme=resulta_anne*365 + resulta_mois*30 + resulta_jour;
 return somme ;
}
// ---------------------------------  exo 3 ---------------------------------//
ConvertNumberGrades(var note){

  if( note >= 95)
    return "A+";
  if(note < 94.99 && note >= 91.5)
    return "A";
  if(note< 91.49  && note >= 88 )
    return "A-";
  if(note< 87.99  && note >= 84.5 )
    return "B+";
  if(note<  84.49 && note >= 81 )
    return "B";
  if(note<  80.99 && note >= 77.5)
    return "B-";
  if(note<  77.49&& note >= 74)
    return "C+";
  if(note<  73.99&& note >= 70.5)
    return "C";
  if(note<  70.49&& note >= 67)
    return "C-";
  if(note<  66.99&& note >= 63.5)
    return "D+";
  if(note<  63.49&& note >= 60)
    return "D";
  if(note<  59.99&& note >=0)
    return "E";


}
// ---------------------------------  exo 4 ---------------------------------//


TriListe(Liste){
  var Listemoinsque8=[] , Listeplusque8 = [], Liste8 = [];
  for( int i = 0 ; i < Liste.length ; i++ ){
    if(Liste[i].length == 8)
      Liste8.add(Liste[i]);
    if(Liste[i].length < 8)
      Listemoinsque8.add(Liste[i]);
    if(Liste[i].length > 8)
      Listeplusque8.add(Liste[i]);
  }
  print(Listeplusque8);
  print("------------------------------------------------");
  print(Listemoinsque8);
  print("------------------------------------------------");
  print(Liste8);
}


// ---------------------------------  exo 5 ---------------------------------//

Trilisteclub(var joueur , var club){
  var cpt=0;
  var courant=[];
  for (var i = 0; i < club.length; i++) {
    courant.add(club[i]);
    for(var j = 0 ; j< joueur.length ; j++){
      if(joueur[j][1] == club[i])
        courant.add(joueur[j][0]);
    }
    courant.add("/");

    }
  return courant;
}
List cells(int length) {
  var cells = new List(length);
  for (var i = 0; i < length; i++) {
    cells[i] = new List(length);
  }
  return cells;
}