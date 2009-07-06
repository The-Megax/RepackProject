--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SandfuryFirecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryFirecaller_Fireball", 5000, 0)
end

function SandfuryFirecaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function SandfuryFirecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryFirecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryFirecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5647, 1, "SandfuryFirecaller_OnCombat")
RegisterUnitEvent(5647, 2, "SandfuryFirecaller_OnLeaveCombat")
RegisterUnitEvent(5647, 3, "SandfuryFirecaller_OnKilledTarget")
RegisterUnitEvent(5647, 4, "SandfuryFirecaller_OnDied")