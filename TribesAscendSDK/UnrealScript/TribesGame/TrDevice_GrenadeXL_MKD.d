module UnrealScript.TribesGame.TrDevice_GrenadeXL_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_GrenadeXL;

extern(C++) interface TrDevice_GrenadeXL_MKD : TrDevice_GrenadeXL
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrDevice_GrenadeXL_MKD")()); }
	private static __gshared TrDevice_GrenadeXL_MKD mDefaultProperties;
	@property final static TrDevice_GrenadeXL_MKD DefaultProperties() { mixin(MGDPC!(TrDevice_GrenadeXL_MKD, "TrDevice_GrenadeXL_MKD TribesGame.Default__TrDevice_GrenadeXL_MKD")()); }
}
