--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ColdarraScalesworn_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraScalesworn_FrostNova", 10000, 0)
Unit:RegisterEvent("ColdarraScalesworn_Rend", 8000, 0)
end

function ColdarraScalesworn_FrostNova(pUnit, Event) 
pUnit:CastSpell(12748) 
end

function ColdarraScalesworn_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function ColdarraScalesworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraScalesworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraScalesworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25717, 1, "ColdarraScalesworn_OnCombat")
RegisterUnitEvent(25717, 2, "ColdarraScalesworn_OnLeaveCombat")
RegisterUnitEvent(25717, 3, "ColdarraScalesworn_OnKilledTarget")
RegisterUnitEvent(25717, 4, "ColdarraScalesworn_OnDied")