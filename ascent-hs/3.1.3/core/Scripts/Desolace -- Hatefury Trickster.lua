--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HatefuryTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryTrickster_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryTrickster_Poison", 8000, 1)
end

function HatefuryTrickster_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryTrickster_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HatefuryTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4671, 1, "HatefuryTrickster_OnCombat")
RegisterUnitEvent(4671, 2, "HatefuryTrickster_OnLeaveCombat")
RegisterUnitEvent(4671, 3, "HatefuryTrickster_OnKilledTarget")
RegisterUnitEvent(4671, 4, "HatefuryTrickster_OnDied")