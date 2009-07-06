--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BlacksouledKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksouledKeeper_Wrath", 5000, 0)
end

function BlacksouledKeeper_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43619, pUnit:GetMainTank()) 
end

function BlacksouledKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksouledKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksouledKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23875, 1, "BlacksouledKeeper_OnCombat")
RegisterUnitEvent(23875, 2, "BlacksouledKeeper_OnLeaveCombat")
RegisterUnitEvent(23875, 3, "BlacksouledKeeper_OnKilledTarget")
RegisterUnitEvent(23875, 4, "BlacksouledKeeper_OnDied")