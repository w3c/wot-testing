node ~/git/thingweb-playground/packages/cli/index.js -t TM -i Ditto/TMs/ -o Results/ditto2 -a -m Ditto/ditto.csv
node ~/git/thingweb-playground/packages/cli/index.js -t TD -i Ditto/TDs/ -o Results/ditto1 -a -m Ditto/ditto.csv
node ~/git/thingweb-playground/packages/cli/index.js --merge-only Results/ditto1.csv Results/ditto2.csv -o Results/ditto