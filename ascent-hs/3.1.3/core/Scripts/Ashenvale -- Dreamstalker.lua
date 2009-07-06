--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dreamstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("Dreamstalker_CorrosiveAcidBreath", 6000, 0)
Unit:RegisterEvent("Dreamstalker_Sleep", 14000, 0)
end

function Dreamstalker_CorrosiveAcidBreath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20667, pUnit:GetMainTank()) 
end

function Dreamstalker_Sleep(pUnit, Event) 
pUnit:CastSpell(20669) 
end

function Dreamstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Dreamstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Dreamstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12498, 1, "Dreamstalker_OnCombat")
RegisterUnitEvent(12498, 2, "Dreamstalker_OnLeaveCombat")
RegisterUnitEvent(12498, 3, "Dreamstalker_OnKilledTarget")
RegisterUnitEvent(12498, 4, "Dreamstalker_OnDied")