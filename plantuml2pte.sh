for f in *.puml;  
do java -jar ~/system/plantuml.jar -encodeurl "$f" > "${f/%puml/pte}"; 

#java -jar ~/system/plantuml.jar -encodeurl NetworkUsersMachines2.puml > NetworkUsersMachines.puml.pte

done;
