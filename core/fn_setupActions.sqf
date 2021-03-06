/*
    File: fn_setupActions.sqf
    Author:

    Description:
    Master addAction file handler for all client-based actions.
*/

life_actions = [];

switch (playerSide) do {

    //Civilian
    case civilian: {
        //Drop fishing net
        life_actions pushBack (player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
        (surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']);

        //Rob person
        life_actions pushBack (player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
        !isNull cursorObject && player distance cursorObject < 3.5 && isPlayer cursorObject && animationState cursorObject == "Incapacitated" && !(cursorObject getVariable ["robbed",false]) ']);
    };
    
    //Cops
    case west: {
		life_actions pushBack (player addAction["Check Licenses",life_fnc_licenseCheck,cursorTarget,0,false,false,"",'!isNull cursorTarget && !(side cursorTarget isEqualTo west) && !(side cursorTarget isEqualTo independent)']);
		life_actions pushBack (player addAction["Write Ticket",life_fnc_ticketAction,cursorTarget,0,false,false,"",'!isNull cursorTarget && !(side cursorTarget isEqualTo west) && !(side cursorTarget isEqualTo independent)']);
    };
    
    //EMS
    case independent: { };

};
