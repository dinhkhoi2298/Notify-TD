[![](https://img.shields.io/badge/Notify-TEXTDRAW-gren?style=for-the-badge)](https://www.facebook.com/liljavier26)

## Screenshot
![](https://media.discordapp.net/attachments/683908907093196813/765206197375598612/unknown.png)
![](https://i.imgur.com/fHPG1if.png)

## Installation

Include in your code and begin using the library:

```pawn
#include <notify_td>
```
## Usage
Function:
```
Notify_Send(const playerid, const text[], const time = 7000);
```
## Test
```pawn
#include <a_samp>
#include <notify_td>

public OnPlayerConnect(playerid) {
	new 
		str[128], name[24];
	
	GetPlayerName(playerid, name, 24);
	format(str, sizeof(str), "~g~%s~w~ da ket noi.", name);

	for(new i = 0; i < 1 + GetPlayerPoolSize(); i ++) {
		if(IsPlayerConnected(i)) {
			Notify_Send(i, str, 3000); 
		}
	}
	return 1;
}

public OnPlayerDisconnect(playerid, reason) {
	new 
		str[128], name[24];
	
	GetPlayerName(playerid, name, 24);
	format(str, sizeof(str), "~r~%s~w~ da ngat ket noi.", name);

	for(new i = 0; i < 1 + GetPlayerPoolSize(); i ++) {
		if(IsPlayerConnected(i)) {
			Notify_Send(i, str, 3000);
		}
	}
	return 1;
}

public OnPlayerSpawn(playerid) {
  Notify_Send(playerid, "Spawn UWU", 3000);
}
```
## Credits
jav - rfogkid26  
![](https://camo.githubusercontent.com/aa06c4609ab26110d59c45e812bc2afeaab1ec81/68747470733a2f2f6b6f6d617265762e636f6d2f67687076632f3f757365726e616d653d726f6573616e6e653236267374796c653d666c61742d73717561726526636f6c6f723d666636396234266c6162656c3d555755)

