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
#define false 0
#define true 1

class Max_Settings_Interpol {
    default_lang = "en"; // fr / en / de

    eye_colors[] = {"Blue","Green","Brown","Black","Hazel","violet","turquoise"};
    min_cop_level_remove_crime = 3;
    phone_numbers_script = true;

    crimes[] = { // WARNING : DO NOT USE ' IT CANNOT BE SAVED IN YOUR DATABASE !!
        //{"DISPLAYED TEXT","PRICE"},
		{"Breach of the highway code",500},
		{"Driving Without a licence",1000},
		{"Flying Without A Licence",4000},
		{"Flying In Restricted Airspace",2500},
		{"Rioting",3000},
        {"Possession Of An Illegal Firearm",3000},
		{"Perverting The Course Of Justice",2000},
		{"Possession Of A Class B Drugs",2500},
		{"Trespassing",1000},
		{"Bank Robbery",10000},
		{"Robbery",10000},
		{"Murder",12000},
		{"Attempted Murder",12000},
		{"Hit & Run",10000},
		{"Bribery",2000},
		{"VIP Assassination",2000},
		{"Vehicle Theft",4000},
		{"Assulting Officer",5000},
		{"Rioting",5000},
		{"Escaping The Jail",7000},
		{"Kidnap",9000},
		{"Manslaughter",5000},
		{"Terrorism",15000},
		{"Abuse of Emergency Call",2000},
		{"Evading The Police", 3000},
    };
};
