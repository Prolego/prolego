integracaoComTraveller :- 
  consult('stringDePontos.pl'),
  stringDePontos(Pontos),
  string_concat("cmd.exe /C java -jar traveller_server.jar ", Pontos, Comando),
  shell(Comando).