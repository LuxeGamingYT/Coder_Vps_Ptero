#!/bin/bash
version_egg="2.1"
version_script="2.5"
echo "⚙️  Scriptversie: ${version_script}"
if [[ -f "./libraries/version" ]]; then
    versions=" $(cat ./libraries/version) " 
    comm1=$( printf '%s\n' "$versions" | tr -d '.' )
    comm2=$( printf '%s\n' "${version_egg}" | tr -d '.' )
    version_system=$(cat ./libraries/version_system) 
    if [[ -f "./libraries/version_system" ]]; then
        if [ "${version_system}" = "true" ]; then
            if [ "${comm1}" -ge "${comm2}"  ]; then
                echo "✅  Recente Egg."
            else
                echo "
    
⚠️  Egg Verouderd.
🔴  Geïnstalleerde versie: ${versions}
🟢  Laatste versie: ${version_egg}
🌐  Github: https://github.com/LuxeGamingYT/Coder_Vps_Ptero
    
"
            fi
        fi
    fi
else
    echo "
    
⚠️  Egg Verouderd.
🔴  Geïnstalleerde versie: 1.0
🟠  Als je zojuist de Egg hebt geüpdatet, installeer dan gewoon je server opnieuw (er wordt niets verwijderd).
🟢  Laatste versie: ${version_egg}
🌐  Github: https://github.com/LuxeGamingYT/Coder_Vps_Ptero
    
"
fi
