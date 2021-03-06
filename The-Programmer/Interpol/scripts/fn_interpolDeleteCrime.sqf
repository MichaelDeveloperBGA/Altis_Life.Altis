/*
    Author: Maxence Lyon
    Altis DEV: https://altisdev.com/user/maxence-lyon
    Teamspeak 3: ts.the-programmer.com
    Web site: www.the-programmer.com
    Steam: « Une Vache Sur CS – Maxence », please leave a message on my profile who says the exact reason before adding me.

    Terms of use:
        - This file is forbidden unless you have permission from the author. If you have this file without permission to use it please do not use it and do not share it.
        - If you have permission to use this file, you can use it on your server however it is strictly forbidden to share it.
        - Out of respect for the author please do not delete this information.

    License number:
    Server's name:
    Owner's name:
*/
if ((lbCurSel 5311) isEqualTo -1) exitWith {hint localize "STR_Cop_wantedList_noCrimeSelected";};
if ((call life_coplevel) < (getNumber (missionConfigFile >> "Max_Settings_Interpol" >> "min_cop_level_remove_crime"))) exitWith {};

_id = parseNumber(ctrlText 5310);
if (_id isEqualTo 0) exitWith {};

_crimeID = lbValue [5311,(lbCurSel 5311)];
if (_crimeID isEqualTo 0) exitWith {};

_prenom = ctrlText 5309;
_num = ctrlText 5318;

[1,_id,[],player,_prenom,_nom,_num,_crimeID] remoteExec ["max_interpol_fnc_updateCrimes",2];
