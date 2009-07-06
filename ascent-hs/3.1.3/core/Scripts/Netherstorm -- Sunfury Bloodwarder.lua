--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Bloodwarder_OnCombat(Unit, Event)
Unit:RegisterEvent("Bloodwarder_Enrage", 25000, 1)
Unit:RegisterEvent("Bloodwarder_Mark", 10000, 0)
end

function Bloodwarder_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function Bloodwarder_Mark(pUnit, Event) 
pUnit:FullCastSpellOnTarget(35877, pUnit:GetMainTank()) 
end

function Bloodwarder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bloodwarder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bloodwarder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18853, 1, "Bloodwarder_OnCombat")
RegisterUnitEvent(18853, 2, "Bloodwarder_OnLeaveCombat")
RegisterUnitEvent(18853, 3, "Bloodwarder_OnKilledTarget")
RegisterUnitEvent(18853, 4, "Bloodwarder_OnDied")