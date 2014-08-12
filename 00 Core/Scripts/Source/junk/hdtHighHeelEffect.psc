Scriptname hdtHighHeelEffect extends ActiveMagicEffect

bool Property isMovedUp = false Auto;

Function AdapterClear() global native
Function KeepUpdate( ObjectReference akActor, float magnitude ) global native
Function StopUpdate( ObjectReference akActor ) global native
float Function GetMagnitude() native

bool Function IsDebugInfoEnable() global native
bool Function GetOptionalFlgs(int bit) global native
float Function GetGlobalOffset() global native

Function NotifyDebugInfo(String info) global
	if(IsDebugInfoEnable())
		Debug.Notification(info);
	endif
endFunction

Function MoveUp(Actor akActor)
	
	int sitState = akActor.GetSitState();
	if(sitState >= 3)
		return;
	endif

	if(isMovedUp == true)
		return
	endif
	float magnitude = GetMagnitude();
	isMovedUp = true;
	
	KeepUpdate(akActor, GetMagnitude());
	RegisterForSingleUpdate(0.1);
	
	NotifyDebugInfo(akActor.GetFormID() + " MoveUp Magnitude:" + magnitude + " Offset:" + GetGlobalOffset());
	
endFunction

Function MoveDown(Actor akActor, bool effectFinish = false)
	
	if(isMovedUp == false)
		return
	endif
	isMovedUp = false;
	
	if(!effectFinish)
		UnregisterForUpdate();
	endif
	
	StopUpdate( akActor );
	NotifyDebugInfo(akActor.GetFormID() + " MoveDown");
	
endFunction

Function RemoveSpells(Actor akTarget)
	int i = 0;
	int numSpell = akTarget.GetSpellCount()
	MagicEffect base = self.GetBaseObject();
	
	while( i<akTarget.GetSpellCount() )
		spell curr = akTarget.GetNthSpell(i);
		if( curr.GetNthEffectMagicEffect(0) == base )
			akTarget.RemoveSpell(curr)
		else
			i += 1;
		endif
		
	endWhile
	
	NotifyDebugInfo(akTarget.GetFormID() + " Removed " + (numSpell - akTarget.GetSpellCount()) + " invalid spells");
	
endFunction

Event OnEffectStart(Actor akTarget, Actor akCaster)
	NotifyDebugInfo(akTarget.GetFormID() + " effect start.")
	MoveUp(akTarget);
endEvent

Event OnEffectFinish(Actor akTarget, Actor akCaster)
	MoveDown(akTarget, true);
	NotifyDebugInfo(akTarget.GetFormID() + " effect finish.")
endEvent

Event OnUpdate()
	
	Actor akActor = GetTargetActor();
	
	; remove spells
	if((akActor.GetWornForm(0x80) as armor) == none)
		RemoveSpells(akActor)
		return
	endif
	
	if(!isMovedUp)
		return
	endif
	
	KeepUpdate(akActor, GetMagnitude());
	RegisterForSingleUpdate(0.1);
endEvent

bool Property enableWhenAlchemy hidden
	bool Function Get()
		return GetOptionalFlgs(0);
	endFunction
endProperty
Keyword Property WICraftingAlchemy Auto

bool Property enableWhenSmithing hidden
	bool Function Get()
		return GetOptionalFlgs(1);
	endFunction
endProperty
Keyword Property WICraftingSmithing Auto

bool Property enableWhenSharpeningWheel hidden
	bool Function Get()
		return GetOptionalFlgs(2);
	endFunction
endProperty
Keyword Property CraftingSmithingSharpeningWheel Auto

bool Property enableWhenArmorTable hidden
	bool Function Get()
		return GetOptionalFlgs(3);
	endFunction
endProperty
Keyword Property CraftingSmithingArmorTable Auto

bool Property enableWhenEnchanting hidden
	bool Function Get()
		return GetOptionalFlgs(4);
	endFunction
endProperty
Keyword Property WICraftingEnchanting Auto

bool Property enableWhenTanningRack hidden
	bool Function Get()
		return GetOptionalFlgs(5);
	endFunction
endProperty
Keyword Property CraftingTanningRack Auto

bool Property enableWhenCookpot hidden
	bool Function Get()
		return GetOptionalFlgs(6);
	endFunction
endProperty
Keyword Property CraftingCookpot Auto

bool property enableWhenSmelter hidden
	bool Function Get()
		return GetOptionalFlgs(7);
	endFunction
endProperty
Keyword Property CraftingSmelter Auto

bool Function IsEnable(ObjectReference akFurniture)
	bool ret = akFurniture.HasKeyWord(WICraftingAlchemy) && enableWhenAlchemy;
	ret = ret || akFurniture.HasKeyWord(WICraftingSmithing) && enableWhenSmithing;
	ret = ret || akFurniture.HasKeyWord(CraftingSmithingSharpeningWheel) && enableWhenSharpeningWheel;
	ret = ret || akFurniture.HasKeyWord(CraftingSmithingArmorTable) && enableWhenArmorTable;
	ret = ret || akFurniture.HasKeyWord(WICraftingEnchanting) && enableWhenEnchanting;
	ret = ret || akFurniture.HasKeyWord(CraftingTanningRack) && enableWhenTanningRack;
	ret = ret || akFurniture.HasKeyWord(CraftingCookpot) && enableWhenCookpot;
	ret = ret || akFurniture.HasKeyWord(CraftingSmelter) && enableWhenSmelter;
	return ret;
endFunction

Event OnSit(ObjectReference akFurniture)
	if(!IsEnable(akFurniture))
		MoveDown(GetTargetActor());
	endif
endEvent

Event OnGetUp(ObjectReference akFurniture)
	MoveUp(GetTargetActor());
endEvent
