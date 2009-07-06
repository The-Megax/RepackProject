--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShandaralDruidSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralDruidSpirit_Moonfire", 6000, 0)
Unit:RegisterEvent("ShandaralDruidSpirit_Regrowth", 13000, 0)
end

function ShandaralDruidSpirit_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function ShandaralDruidSpirit_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function ShandaralDruidSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralDruidSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralDruidSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30863, 1, "LostShandaralDruidSpirit_OnCombat")
RegisterUnitEvent(30863, 2, "ShandaralDruidSpirit_OnLeaveCombat")
RegisterUnitEvent(30863, 3, "ShandaralDruidSpirit_OnKilledTarget")
RegisterUnitEvent(30863, 4, "ShandaralDruidSpirit_OnDied")