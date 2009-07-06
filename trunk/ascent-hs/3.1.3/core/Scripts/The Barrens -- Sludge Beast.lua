--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SludgeBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("SludgeBeast_BlackSludge", 6000, 0)
end

function SludgeBeast_BlackSludge(pUnit, Event) 
pUnit:CastSpell(7279) 
end

function SludgeBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SludgeBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SludgeBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3295, 1, "SludgeBeast_OnCombat")
RegisterUnitEvent(3295, 2, "SludgeBeast_OnLeaveCombat")
RegisterUnitEvent(3295, 3, "SludgeBeast_OnKilledTarget")
RegisterUnitEvent(3295, 4, "SludgeBeast_OnDied")