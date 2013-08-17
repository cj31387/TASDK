module UnrealScript.TribesGame.GFxTrPage_ServerClasses;

import ScriptClasses;
import UnrealScript.Helpers;
import UnrealScript.TribesGame.GFxTrAction;
import UnrealScript.TribesGame.GFxTrPage;
import UnrealScript.GFxUI.GFxObject;

extern(C++) interface GFxTrPage_ServerClasses : GFxTrPage
{
public extern(D):
	private static __gshared ScriptClass mStaticClass;
	@property final static ScriptClass StaticClass() { mixin(MGSCC!("Class TribesGame.GFxTrPage_ServerClasses")()); }
	private static __gshared GFxTrPage_ServerClasses mDefaultProperties;
	@property final static GFxTrPage_ServerClasses DefaultProperties() { mixin(MGDPC!(GFxTrPage_ServerClasses, "GFxTrPage_ServerClasses TribesGame.Default__GFxTrPage_ServerClasses")()); }
	static struct Functions
	{
		private static __gshared
		{
			ScriptFunction mInitialize;
			ScriptFunction mSpecialAction;
			ScriptFunction mFillData;
			ScriptFunction mFillOption;
			ScriptFunction mCheckDescription;
			ScriptFunction mFillDescription;
			ScriptFunction mShowModel;
			ScriptFunction mPopupData;
			ScriptFunction mPopupComplete;
			ScriptFunction mShowBoundsError;
		}
		public @property static final
		{
			ScriptFunction Initialize() { mixin(MGF!("mInitialize", "Function TribesGame.GFxTrPage_ServerClasses.Initialize")()); }
			ScriptFunction SpecialAction() { mixin(MGF!("mSpecialAction", "Function TribesGame.GFxTrPage_ServerClasses.SpecialAction")()); }
			ScriptFunction FillData() { mixin(MGF!("mFillData", "Function TribesGame.GFxTrPage_ServerClasses.FillData")()); }
			ScriptFunction FillOption() { mixin(MGF!("mFillOption", "Function TribesGame.GFxTrPage_ServerClasses.FillOption")()); }
			ScriptFunction CheckDescription() { mixin(MGF!("mCheckDescription", "Function TribesGame.GFxTrPage_ServerClasses.CheckDescription")()); }
			ScriptFunction FillDescription() { mixin(MGF!("mFillDescription", "Function TribesGame.GFxTrPage_ServerClasses.FillDescription")()); }
			ScriptFunction ShowModel() { mixin(MGF!("mShowModel", "Function TribesGame.GFxTrPage_ServerClasses.ShowModel")()); }
			ScriptFunction PopupData() { mixin(MGF!("mPopupData", "Function TribesGame.GFxTrPage_ServerClasses.PopupData")()); }
			ScriptFunction PopupComplete() { mixin(MGF!("mPopupComplete", "Function TribesGame.GFxTrPage_ServerClasses.PopupComplete")()); }
			ScriptFunction ShowBoundsError() { mixin(MGF!("mShowBoundsError", "Function TribesGame.GFxTrPage_ServerClasses.ShowBoundsError")()); }
		}
	}
	@property final
	{
		auto ref
		{
			int PopupNum() { mixin(MGPC!(int, 364)()); }
			int MaxBOunds() { mixin(MGPC!(int, 360)()); }
			int MinBounds() { mixin(MGPC!(int, 356)()); }
		}
		bool bBoundsPopup() { mixin(MGBPC!(368, 0x1)()); }
		bool bBoundsPopup(bool val) { mixin(MSBPC!(368, 0x1)()); }
	}
final:
	void Initialize()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.Initialize, cast(void*)0, cast(void*)0);
	}
	void SpecialAction(GFxTrAction Action)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxTrAction*)params.ptr = Action;
		(cast(ScriptObject)this).ProcessEvent(Functions.SpecialAction, params.ptr, cast(void*)0);
	}
	void FillData(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillData, params.ptr, cast(void*)0);
	}
	GFxObject FillOption(int ActionIndex)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = ActionIndex;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillOption, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void CheckDescription(GFxObject DataList)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.CheckDescription, params.ptr, cast(void*)0);
	}
	GFxObject FillDescription(GFxObject DataList)
	{
		ubyte params[8];
		params[] = 0;
		*cast(GFxObject*)params.ptr = DataList;
		(cast(ScriptObject)this).ProcessEvent(Functions.FillDescription, params.ptr, cast(void*)0);
		return *cast(GFxObject*)&params[4];
	}
	void ShowModel()
	{
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowModel, cast(void*)0, cast(void*)0);
	}
	void PopupData(GFxObject Obj)
	{
		ubyte params[4];
		params[] = 0;
		*cast(GFxObject*)params.ptr = Obj;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupData, params.ptr, cast(void*)0);
	}
	void PopupComplete(int Action, ScriptString TextInput)
	{
		ubyte params[16];
		params[] = 0;
		*cast(int*)params.ptr = Action;
		*cast(ScriptString*)&params[4] = TextInput;
		(cast(ScriptObject)this).ProcessEvent(Functions.PopupComplete, params.ptr, cast(void*)0);
	}
	void ShowBoundsError(int PropId, int PropType)
	{
		ubyte params[8];
		params[] = 0;
		*cast(int*)params.ptr = PropId;
		*cast(int*)&params[4] = PropType;
		(cast(ScriptObject)this).ProcessEvent(Functions.ShowBoundsError, params.ptr, cast(void*)0);
	}
}
