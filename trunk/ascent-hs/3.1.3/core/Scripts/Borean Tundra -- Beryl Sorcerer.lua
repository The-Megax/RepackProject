--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BerylSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("BerylSorcerer_Blink", 11000, 0)
Unit:RegisterEvent("BerylSorcerer_Frostbolt", 8000, 0)
end

function BerylSorcerer_Blink(pUnit, Event) 
pUnit:CastSpell(50648) 
end

function BerylSorcerer_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BerylSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BerylSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BerylSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25316, 1, "BerylSorcerer_OnCombat")
RegisterUnitEvent(25316, 2, "BerylSorcerer_OnLeaveCombat")
RegisterUnitEvent(25316, 3, "BerylSorcerer_OnKilledTarget")
RegisterUnitEvent(25316, 4, "BerylSorcerer_OnDied")