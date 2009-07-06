--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GeneralCerulean_OnCombat(Unit, Event)
Unit:RegisterEvent("GeneralCerulean_FrostShock", 7000, 0)
end

function GeneralCerulean_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15499, pUnit:GetMainTank()) 
end

function GeneralCerulean_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeneralCerulean_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeneralCerulean_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25716, 1, "GeneralCerulean_OnCombat")
RegisterUnitEvent(25716, 2, "GeneralCerulean_OnLeaveCombat")
RegisterUnitEvent(25716, 3, "GeneralCerulean_OnKilledTarget")
RegisterUnitEvent(25716, 4, "GeneralCerulean_OnDied")