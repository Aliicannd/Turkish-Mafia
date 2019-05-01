#if defined FILTERSCRIPT
	#endinput
#endif

#if defined _moneyhax_included
	#endinput
#endif
#define _moneyhax_included
#include <a_samp>

new param[MAX_PLAYERS];
public OnPlayerUpdate(playerid)
{
    if(GetPlayerMoney(playerid) != param[playerid])
	{
		ResetPlayerMoney(playerid);
		GivePlayerMoney(playerid, param[playerid]);
	}
	if (funcidx("moneyhax_OnPlayerUpdate") != -1)
	{
		return CallLocalFunction("moneyhax_OnPlayerUpdate", "i", playerid);
	}
	return 1;
}
#if defined _ALS_OnPlayerUpdate
    #undef OnPlayerUpdate
#else
    #define _ALS_OnPlayerUpdate
#endif
#define OnPlayerUpdate moneyhax_OnPlayerUpdate
forward moneyhax_OnPlayerUpdate(playerid);

forward GivePlayerCash(playerid, money);
public GivePlayerCash(playerid, money)
{
	param[playerid] += money;
	ResetPlayerMoney(playerid);
	GivePlayerMoney(playerid, param[playerid]);
	return 1;
}
forward ResetPlayerCash(playerid);
public ResetPlayerCash(playerid)
{
	ResetPlayerMoney(playerid);
	param[playerid] = 0;
	return 1;
}
forward GetPlayerCash(playerid);
public GetPlayerCash(playerid) return param[playerid];

public OnPlayerConnect(playerid)
{
	param[playerid] = 0;
	if (funcidx("moneyhax_OnPlayerConnect") != -1)
	{
		return CallLocalFunction("moneyhax_OnPlayerConnect", "i", playerid);
	}
	return 1;
}

#if defined _ALS_OnPlayerConnect
    #undef OnPlayerConnect
#else
    #define _ALS_OnPlayerConnect
#endif
#define OnPlayerConnect moneyhax_OnPlayerConnect
forward moneyhax_OnPlayerConnect(playerid);

#define GivePlayerMoney GivePlayerCash
#define GetPlayerMoney GetPlayerCash
#define ResetPlayerMoney ResetPlayerCash
