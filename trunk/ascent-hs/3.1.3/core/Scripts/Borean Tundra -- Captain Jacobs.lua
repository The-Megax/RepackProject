--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CaptainJacobs_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainJacobs_BladeFlurry", 10000, 0)
Unit:RegisterEvent("CaptainJacobs_MortalStrike", 8000, 0)
end

function CaptainJacobs_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(33735) 
end

function CaptainJacobs_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function CaptainJacobs_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainJacobs_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainJacobs_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26252, 1, "CaptainJacobs_OnCombat")
RegisterUnitEvent(26252, 2, "CaptainJacobs_OnLeaveCombat")
RegisterUnitEvent(26252, 3, "CaptainJacobs_OnKilledTarget")
RegisterUnitEvent(26252, 4, "CaptainJacobs_OnDied")