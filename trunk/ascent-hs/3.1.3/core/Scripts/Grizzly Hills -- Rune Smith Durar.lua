--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function RuneSmithDurar_OnCombat(Unit, Event)
Unit:RegisterEvent("RuneSmithDurar_LightningCharged", 4000, 1)
end

function RuneSmithDurar_LightningCharged(pUnit, Event) 
pUnit:CastSpell(52701) 
end

function RuneSmithDurar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RuneSmithDurar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RuneSmithDurar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26409, 1, "RuneSmithDurar_OnCombat")
RegisterUnitEvent(26409, 2, "RuneSmithDurar_OnLeaveCombat")
RegisterUnitEvent(26409, 3, "RuneSmithDurar_OnKilledTarget")
RegisterUnitEvent(26409, 4, "RuneSmithDurar_OnDied")