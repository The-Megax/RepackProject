--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Dishu_OnCombat(Unit, Event)
Unit:RegisterEvent("Dishu_SavannahCubs", 4000, 1)
end

function Dishu_SavannahCubs(pUnit, Event) 
pUnit:CastSpell(8210) 
end

function Dishu_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Dishu_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Dishu_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5865, 1, "Dishu_OnCombat")
RegisterUnitEvent(5865, 2, "Dishu_OnLeaveCombat")
RegisterUnitEvent(5865, 3, "Dishu_OnKilledTarget")
RegisterUnitEvent(5865, 4, "Dishu_OnDied")