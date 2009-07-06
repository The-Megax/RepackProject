--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SummonedFelhunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SummonedFelhunter_ManaBurn", 6000, 0)
end

function SummonedFelhunter_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function SummonedFelhunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SummonedFelhunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SummonedFelhunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6268, 1, "SummonedFelhunter_OnCombat")
RegisterUnitEvent(6268, 2, "SummonedFelhunter_OnLeaveCombat")
RegisterUnitEvent(6268, 3, "SummonedFelhunter_OnKilledTarget")
RegisterUnitEvent(6268, 4, "SummonedFelhunter_OnDied")