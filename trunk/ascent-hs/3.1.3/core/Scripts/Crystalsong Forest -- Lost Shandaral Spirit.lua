--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function LostShandaralSpirit_OnCombat(Unit, Event)
Unit:RegisterEvent("LostShandaralSpirit_Moonfire", 6000, 0)
Unit:RegisterEvent("LostShandaralSpirit_Regrowth", 13000, 0)
end

function LostShandaralSpirit_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15798, pUnit:GetMainTank()) 
end

function LostShandaralSpirit_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function LostShandaralSpirit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LostShandaralSpirit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LostShandaralSpirit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31231, 1, "LostLostShandaralSpirit_OnCombat")
RegisterUnitEvent(31231, 2, "LostShandaralSpirit_OnLeaveCombat")
RegisterUnitEvent(31231, 3, "LostShandaralSpirit_OnKilledTarget")
RegisterUnitEvent(31231, 4, "LostShandaralSpirit_OnDied")