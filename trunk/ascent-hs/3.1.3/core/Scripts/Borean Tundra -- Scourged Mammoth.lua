--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ScourgedMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedMammoth_Trample", 6000, 0)
end

function ScourgedMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(15550)
end

function ScourgedMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25452, 1, "ScourgedMammoth_OnCombat")
RegisterUnitEvent(25452, 2, "ScourgedMammoth_OnLeaveCombat")
RegisterUnitEvent(25452, 3, "ScourgedMammoth_OnKilledTarget")
RegisterUnitEvent(25452, 4, "ScourgedMammoth_OnDied")