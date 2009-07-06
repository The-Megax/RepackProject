--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function KodoMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("KodoMatriarch_Tramble", 6000, 0)
end

function KodoMatriarch_Tramble(pUnit, Event) 
pUnit:CastSpell(5568, pUnit:GetClosestPlayer()) 
end

function KodoMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KodoMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KodoMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2974, 1, "KodoMatriarch_OnCombat")
RegisterUnitEvent(2974, 2, "KodoMatriarch_OnLeaveCombat")
RegisterUnitEvent(2974, 3, "KodoMatriarch_OnKilledTarget")
RegisterUnitEvent(2974, 4, "KodoMatriarch_OnDied")