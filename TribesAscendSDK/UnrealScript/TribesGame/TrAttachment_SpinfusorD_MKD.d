module UnrealScript.TribesGame.TrAttachment_SpinfusorD_MKD;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.TrDeviceAttachment;

extern(C++) interface TrAttachment_SpinfusorD_MKD : TrDeviceAttachment
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.TrAttachment_SpinfusorD_MKD")()); }
	private static __gshared TrAttachment_SpinfusorD_MKD mDefaultProperties;
	@property final static TrAttachment_SpinfusorD_MKD DefaultProperties() { mixin(MGDPC!(TrAttachment_SpinfusorD_MKD, "TrAttachment_SpinfusorD_MKD TribesGame.Default__TrAttachment_SpinfusorD_MKD")()); }
}
