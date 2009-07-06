--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function HatefuryRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryRogue_Enrage", 10000, 1)
end

function HatefuryRogue_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4670, 1, "HatefuryRogue_OnCombat")
RegisterUnitEvent(4670, 2, "HatefuryRogue_OnLeaveCombat")
RegisterUnitEvent(4670, 3, "HatefuryRogue_OnKilledTarget")
RegisterUnitEvent(4670, 4, "HatefuryRogue_OnDied")