module UnrealScript.UDKBase.UDKAnimBlendByFlying;

import ScriptClasses;
import UnrealScript.Engine.AnimNodeAimOffset;
import UnrealScript.UDKBase.UDKAnimBlendBase;
import UnrealScript.UDKBase.UDKPawn;

extern(C++) interface UDKAnimBlendByFlying : UDKAnimBlendBase
{
	enum EFlyingState : ubyte
	{
		Flying_NotFlying = 0,
		Flying_OpeningWings = 1,
		Flying_Flying = 2,
		Flying_ClosingWings = 3,
		Flying_MAX = 4,
	}
	public @property final auto ref ScriptName EndingAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 324); }
	public @property final bool bHasEndingAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x2) != 0; }
	public @property final bool bHasEndingAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x2; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x2; } return val; }
	public @property final bool bHasStartingAnim() { return (*cast(uint*)(cast(size_t)cast(void*)this + 320) & 0x1) != 0; }
	public @property final bool bHasStartingAnim(bool val) { if (val) { *cast(uint*)(cast(size_t)cast(void*)this + 320) |= 0x1; } else { *cast(uint*)(cast(size_t)cast(void*)this + 320) &= ~0x1; } return val; }
	public @property final auto ref ScriptName StartingAnimName() { return *cast(ScriptName*)(cast(size_t)cast(void*)this + 312); }
	public @property final auto ref AnimNodeAimOffset FlyingDir() { return *cast(AnimNodeAimOffset*)(cast(size_t)cast(void*)this + 308); }
	public @property final auto ref UDKAnimBlendBase FlyingMode() { return *cast(UDKAnimBlendBase*)(cast(size_t)cast(void*)this + 304); }
	// WARNING: Property 'Pawn' has the same name as a defined type!
	public @property final auto ref UDKAnimBlendByFlying.EFlyingState FlyingState() { return *cast(UDKAnimBlendByFlying.EFlyingState*)(cast(size_t)cast(void*)this + 296); }
	final void UpdateFlyingState()
	{
		(cast(ScriptObject)this).ProcessEvent(cast(ScriptFunction)(*ScriptObject.ObjectArray)[34511], cast(void*)0, cast(void*)0);
	}
}