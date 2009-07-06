--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DragonflayerFlamebinder_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonflayerFlamebinder_FlamePatch", 10000, 0)
Unit:RegisterEvent("DragonflayerFlamebinder_InciteFlames", 7000, 0)
end

function DragonflayerFlamebinder_FlamePatch(pUnit, Event) 
pUnit:CastSpell(52208) 
end

function DragonflayerFlamebinder_InciteFlames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52209, pUnit:GetMainTank()) 
end

function DragonflayerFlamebinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonflayerFlamebinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonflayerFlamebinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27259, 1, "DragonflayerFlamebinder_OnCombat")
RegisterUnitEvent(27259, 2, "DragonflayerFlamebinder_OnLeaveCombat")
RegisterUnitEvent(27259, 3, "DragonflayerFlamebinder_OnKilledTarget")
RegisterUnitEvent(27259, 4, "DragonflayerFlamebinder_OnDied")