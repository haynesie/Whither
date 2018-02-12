for i in lab??; do grep ':[01] ' ${i} | cut -f1 -d"-" | tr -s ' ' | cut -f1,6,7 -d" " --output-delimiter="," | sed "s/:/,${i},/" | cut -f1-4 -d","; done > ../../allconsolelogins.csv
