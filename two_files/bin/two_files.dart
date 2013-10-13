library two_files;

part 'fcns.dart';


void main() {
  var phrase = "sa nana snob porte de trop bons ananas";
  print("____________________ exo 1 test ___________________________");
  print(isApalindrome(phrase));
  print("____________________ exo 2 test ___________________________");
  var age =calcule_age(13,11,1992);
  print(age);
  print("___________________ exo 3 test ____________________________");
  print(ConvertNumberGrades(85));
  var Liste=["hamza","Dzenan","mohammed","Mohammed-Amine","anne-shophie","Pierre-olivier","Xiao","Anne-Marie","Luc","Nicola","Jad","Josianne"];
  print("___________________ exo 4 test ____________________________");
  TriListe(Liste);
  //var joueur = [{, }, { }, { }, { }, {}, {}];
  var club = ["arsenal","chelsea","man city"];
  //var Joueur [0][0]='dzeko';
  //Joueur[0][1]= 'man city';
  var length=7;
  var joueur = cells(7);
  for (var i = 0; i < length; i++) {
    for (var j = 0; j < 2; j++) {
      joueur[i][j] = (i+1)*(j+1);
    }
  }
joueur[0][0]='dzeko';
joueur[0][1]='man city';
joueur[1][0]="ozil";
joueur[1][1]="arsenal";
joueur[2][0]="walcott";
joueur[2][1]="arsenal";
joueur[3][0]="ramsey";
joueur[3][1]="arsenal";
joueur[4][0]="mikel" ;
joueur[4][1]="chelsea";
joueur[5][0]="terry" ;
joueur[5][1]="chelsea";
joueur[6][0]="lampard";
joueur[6][1]="chelsea";
print("______________________ exo 5 test _________________________");
print(Trilisteclub(joueur,club));

}
