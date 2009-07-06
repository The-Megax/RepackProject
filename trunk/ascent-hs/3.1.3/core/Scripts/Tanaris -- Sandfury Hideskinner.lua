--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SandfuryHideskinner_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryHideskinner_Backstab", 4000, 0)
end

function SandfuryHideskinner_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7159, pUnit:GetMainTank()) 
end

function SandfuryHideskinner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryHideskinner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryHideskinner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5645, 1, "SandfuryHideskinner_OnCombat")
RegisterUnitEvent(5645, 2, "SandfuryHideskinner_OnLeaveCombat")
RegisterUnitEvent(5645, 3, "SandfuryHideskinner_OnKilledTarget")
RegisterUnitEvent(5645, 4, "SandfuryHideskinner_OnDied")