--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SandfuryAxeThrower_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryAxeThrower_Throw", 4000, 0)
end

function SandfuryAxeThrower_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SandfuryAxeThrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryAxeThrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryAxeThrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5646, 1, "SandfuryAxeThrower_OnCombat")
RegisterUnitEvent(5646, 2, "SandfuryAxeThrower_OnLeaveCombat")
RegisterUnitEvent(5646, 3, "SandfuryAxeThrower_OnKilledTarget")
RegisterUnitEvent(5646, 4, "SandfuryAxeThrower_OnDied")