--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function BloodfeatherFury_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodfeatherFury_Savagery", 8000, 0)
end

function BloodfeatherFury_Savagery(pUnit, Event) 
pUnit:CastSpell(5515) 
end

function BloodfeatherFury_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodfeatherFury_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodfeatherFury_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2019, 1, "BloodfeatherFury_OnCombat")
RegisterUnitEvent(2019, 2, "BloodfeatherFury_OnLeaveCombat")
RegisterUnitEvent(2019, 3, "BloodfeatherFury_OnKilledTarget")
RegisterUnitEvent(2019, 4, "BloodfeatherFury_OnDied")