module UnrealScript.TribesGame.TrPlayerVoice_T2_Male05;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrPlayerVoice;

extern(C++) interface TrPlayerVoice_T2_Male05 : TrPlayerVoice
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC("Class TribesGame.TrPlayerVoice_T2_Male05")); }
	private static __gshared TrPlayerVoice_T2_Male05 mDefaultProperties;
	@property final static TrPlayerVoice_T2_Male05 DefaultProperties() { mixin(MGDPC("TrPlayerVoice_T2_Male05", "TrPlayerVoice_T2_Male05 TribesGame.Default__TrPlayerVoice_T2_Male05")); }
}
