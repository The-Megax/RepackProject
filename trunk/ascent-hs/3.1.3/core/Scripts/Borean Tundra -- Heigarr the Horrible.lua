--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HeigarrtheHorrible_OnCombat(Unit, Event)
Unit:RegisterEvent("HeigarrtheHorrible_Cleave", 7000, 0)
Unit:RegisterEvent("HeigarrtheHorrible_ConcussionBlow", 9000, 0)
end

function HeigarrtheHorrible_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function HeigarrtheHorrible_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function HeigarrtheHorrible_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HeigarrtheHorrible_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HeigarrtheHorrible_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26266, 1, "HeigarrtheHorrible_OnCombat")
RegisterUnitEvent(26266, 2, "HeigarrtheHorrible_OnLeaveCombat")
RegisterUnitEvent(26266, 3, "HeigarrtheHorrible_OnKilledTarget")
RegisterUnitEvent(26266, 4, "HeigarrtheHorrible_OnDied")