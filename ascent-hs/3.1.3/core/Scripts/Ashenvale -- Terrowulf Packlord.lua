--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TerrowulfPacklord_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfPacklord_BattleRoar", 2000, 2)
end

function TerrowulfPacklord_BattleRoar(pUnit, Event) 
pUnit:CastSpell(6507) 
end

function TerrowulfPacklord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfPacklord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfPacklord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3792, 1, "TerrowulfPacklord_OnCombat")
RegisterUnitEvent(3792, 2, "TerrowulfPacklord_OnLeaveCombat")
RegisterUnitEvent(3792, 3, "TerrowulfPacklord_OnKilledTarget")
RegisterUnitEvent(3792, 4, "TerrowulfPacklord_OnDied")