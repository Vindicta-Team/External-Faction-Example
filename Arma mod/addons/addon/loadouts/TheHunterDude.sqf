
comment "Exported from Arsenal by Sparker";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "arifle_ARX_hex_F";
this addPrimaryWeaponItem "optic_Arco";
this addPrimaryWeaponItem "30Rnd_65x39_caseless_green";
this addPrimaryWeaponItem "10Rnd_50BW_Mag_F";
this addWeapon "launch_RPG7_F";
this addSecondaryWeaponItem "RPG7_F";

comment "Add containers";
this forceAddUniform "U_C_HunterBody_grn";
this addVest "V_BandollierB_khk";
this addBackpack "B_AssaultPack_cbr";

comment "Add binoculars";
this addWeapon "Binocular";

comment "Add items to containers";
this addItemToUniform "FirstAidKit";
for "_i" from 1 to 2 do {this addItemToUniform "30Rnd_65x39_caseless_green";};
this addItemToVest "30Rnd_65x39_caseless_green";
for "_i" from 1 to 5 do {this addItemToVest "10Rnd_50BW_Mag_F";};
for "_i" from 1 to 3 do {this addItemToBackpack "10Rnd_50BW_Mag_F";};
for "_i" from 1 to 6 do {this addItemToBackpack "30Rnd_65x39_caseless_green";};
this addItemToBackpack "RPG7_F";
this addHeadgear "H_Hat_Safari_sand_F";

comment "Add items";
this linkItem "ItemMap";
this linkItem "ItemCompass";
this linkItem "ItemWatch";
this linkItem "ItemRadio";

comment "Set identity";
[this,"LivonianHead_5","male01pol"] call BIS_fnc_setIdentity;
