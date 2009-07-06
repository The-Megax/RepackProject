--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrozenSphere_OnCombat(Unit, Event)
Unit:RegisterEvent("FrozenSphere_IceShard", 6000, 0)
end

function FrozenSphere_IceShard(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50578, pUnit:GetMainTank()) 
end

function FrozenSphere_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrozenSphere_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrozenSphere_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28066, 1, "FrozenSphere_OnCombat")
RegisterUnitEvent(28066, 2, "FrozenSphere_OnLeaveCombat")
RegisterUnitEvent(28066, 3, "FrozenSphere_OnKilledTarget")
RegisterUnitEvent(28066, 4, "FrozenSphere_OnDied")