#include <a_samp>
#include <notify_td>

public OnPlayerConnect(playerid) {
	new 
		str[128], name[24];
	
	GetPlayerName(playerid, name, 24);
	format(str, sizeof(str), "~g~%s~w~ da ket noi.", name);

	for(new i = 0; i < 1 + GetPlayerPoolSize(); i ++) {
		if(IsPlayerConnected(i)) {
			Notify_Send(playerid, str, 3000); 
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
			Notify_Send(playerid, str, 3000);
		}
	}
	return 1;
}


