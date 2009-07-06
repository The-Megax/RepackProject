--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CenarionDruid_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionDruid_Wrath", 5000, 2)
Unit:RegisterEvent("CenarionDruid_CatForm", 12000, 1)
Unit:RegisterEvent("CenarionDruid_TigersFury", 14000, 1)
end

function CenarionDruid_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function CenarionDruid_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function CenarionDruid_TigersFury(pUnit, Event) 
pUnit:CastSpell(5217) 
end

function CenarionDruid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionDruid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionDruid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4052, 1, "CenarionDruid_OnCombat")
RegisterUnitEvent(4052, 2, "CenarionDruid_OnLeaveCombat")
RegisterUnitEvent(4052, 3, "CenarionDruid_OnKilledTarget")
RegisterUnitEvent(4052, 4, "CenarionDruid_OnDied")