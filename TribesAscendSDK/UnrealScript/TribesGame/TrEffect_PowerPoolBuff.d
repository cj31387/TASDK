module UnrealScript.TribesGame.TrEffect_PowerPoolBuff;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.Engine.Actor;
import UnrealScript.TribesGame.TrEffect_Managed;

extern(C++) interface TrEffect_PowerPoolBuff : TrEffect_Managed
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrEffect_PowerPoolBuff")()); }
	private static __gshared TrEffect_PowerPoolBuff mDefaultProperties;
	@property final static TrEffect_PowerPoolBuff DefaultProperties() { mixin(MGDPC!(TrEffect_PowerPoolBuff, "TrEffect_PowerPoolBuff TribesGame.Default__TrEffect_PowerPoolBuff")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mApply;
			ScriptFunction mRemove;
		}
		public @property static final
		{
			ScriptFunction Apply() { mixin(MGF!("mApply", "Function TribesGame.TrEffect_PowerPoolBuff.Apply")()); }
			ScriptFunction Remove() { mixin(MGF!("mRemove", "Function TribesGame.TrEffect_PowerPoolBuff.Remove")()); }
		}
	}
final:
	void Apply(Actor Target, Actor.ImpactInfo Impact)
	{
		ubyte params[84];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		*cast(Actor.ImpactInfo*)&params[4] = Impact;
		(cast(ScriptObject)this).ProcessEvent(Functions.Apply, params.ptr, cast(void*)0);
	}
	void Remove(Actor Target)
	{
		ubyte params[4];
		params[] = 0;
		*cast(Actor*)params.ptr = Target;
		(cast(ScriptObject)this).ProcessEvent(Functions.Remove, params.ptr, cast(void*)0);
	}
}
