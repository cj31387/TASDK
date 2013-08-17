module UnrealScript.TribesGame.TrWarningMessage;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.UTGame.UTLocalMessage;
import UnrealScript.Engine.PlayerReplicationInfo;
import UnrealScript.Core.UObject;

extern(C++) interface TrWarningMessage : UTLocalMessage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrWarningMessage")()); }
	private static __gshared TrWarningMessage mDefaultProperties;
	@property final static TrWarningMessage DefaultProperties() { mixin(MGDPC!(TrWarningMessage, "TrWarningMessage TribesGame.Default__TrWarningMessage")()); }
	static struct Functions
	{
		private static __gshared ScriptFunction mGetString;
		public @property static final ScriptFunction GetString() { mixin(MGF!("mGetString", "Function TribesGame.TrWarningMessage.GetString")()); }
	}
	@property final auto ref
	{
		ScriptString RequiresPowerToFire() { mixin(MGPC!(ScriptString, 184)()); }
		ScriptString RequiresCreditsToFire() { mixin(MGPC!(ScriptString, 172)()); }
		ScriptString SuicidePenalty() { mixin(MGPC!(ScriptString, 160)()); }
		ScriptString MissileIntercepted() { mixin(MGPC!(ScriptString, 148)()); }
		ScriptString MissileTargetingYou() { mixin(MGPC!(ScriptString, 136)()); }
		ScriptString MissileLockedOnToYou() { mixin(MGPC!(ScriptString, 124)()); }
		ScriptString SaberLauncherNeedsTargetToFire() { mixin(MGPC!(ScriptString, 112)()); }
		ScriptString FumbledFlag() { mixin(MGPC!(ScriptString, 100)()); }
	}
	final static ScriptString GetString(int Switch, bool bPRI1HUD, PlayerReplicationInfo RelatedPRI_1, PlayerReplicationInfo RelatedPRI_2, UObject OptionalObject)
	{
		ubyte params[32];
		params[] = 0;
		*cast(int*)params.ptr = Switch;
		*cast(bool*)&params[4] = bPRI1HUD;
		*cast(PlayerReplicationInfo*)&params[8] = RelatedPRI_1;
		*cast(PlayerReplicationInfo*)&params[12] = RelatedPRI_2;
		*cast(UObject*)&params[16] = OptionalObject;
		StaticClass.ProcessEvent(Functions.GetString, params.ptr, cast(void*)0);
		return *cast(ScriptString*)&params[20];
	}
}
