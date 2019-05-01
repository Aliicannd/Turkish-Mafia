/*
		This is just a workaround
		
		Main issue from SA-MP wiki:
		
		"GetTickCount will cause problems on servers with uptime of over 24 days (SA:MP server, not physical server !!!) 
		as GetTickCount will eventually warp past the integer size constraints"

*/

// Fix GetTickCount
stock _HOOKED_GetTickCount()
{
	new _RETURNED_TICKCOUNT = GetTickCount();
	if(_RETURNED_TICKCOUNT < 0)
	{
		_RETURNED_TICKCOUNT += 2147483647;
	}
	return _RETURNED_TICKCOUNT;
}
 
#if defined _ALS_GetTickCount
	#undef GetTickCount
#else
	#define _ALS_GetTickCount
#endif
 
#define GetTickCount _HOOKED_GetTickCount
