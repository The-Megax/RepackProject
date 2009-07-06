--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]
function VentureCoBuilder_OnCombat(Unit, Event)
Unit:RegisterEvent("VentureCoBuilder_Shoot", 6000, 0)
end

function VentureCoBuilder_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function VentureCoBuilder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function VentureCoBuilder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function VentureCoBuilder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4070, 1, "VentureCoBuilder_OnCombat")
RegisterUnitEvent(4070, 2, "VentureCoBuilder_OnLeaveCombat")
RegisterUnitEvent(4070, 3, "VentureCoBuilder_OnKilledTarget")
RegisterUnitEvent(4070, 4, "VentureCoBuilder_OnDied")