module UnrealScript.TribesGame.TrDevice_ThumperD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDevice_ThumperD;

extern(C++) interface TrDevice_ThumperD_MKD : TrDevice_ThumperD
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrDevice_ThumperD_MKD")); }
	private static __gshared TrDevice_ThumperD_MKD mDefaultProperties;
	@property final static TrDevice_ThumperD_MKD DefaultProperties() { mixin(MGDPC("TrDevice_ThumperD_MKD", "TrDevice_ThumperD_MKD TribesGame.Default__TrDevice_ThumperD_MKD")); }
}
