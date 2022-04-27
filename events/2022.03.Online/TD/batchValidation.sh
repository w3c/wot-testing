node ~/git/thingweb-playground/packages/cli/index.js -t TM -i Ditto/TMs/ -o Results/dittoTM -a -m Ditto/ditto.csv
node ~/git/thingweb-playground/packages/cli/index.js -t TD -i Ditto/TDs/ -o Results/dittoTD -a -m Ditto/ditto.csv
node ~/git/thingweb-playground/packages/cli/index.js --merge-only Results/dittoTM.csv Results/dittoTD.csv -o Results/ditto
rm Results/dittoTM.csv
rm Results/dittoTD.csv