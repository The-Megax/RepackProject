--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function ForemanRigger_OnCombat(Unit, Event)
Unit:RegisterEvent("ForemanRigger_Net", 10000, 0)
Unit:RegisterEvent("ForemanRigger_PierceArmor", 12000, 1)
end

function ForemanRigger_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetRandomPlayer(4)) 
end

function ForemanRigger_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function ForemanRigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForemanRigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForemanRigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5931, 1, "ForemanRigger_OnCombat")
RegisterUnitEvent(5931, 2, "ForemanRigger_OnLeaveCombat")
RegisterUnitEvent(5931, 3, "ForemanRigger_OnKilledTarget")
RegisterUnitEvent(5931, 4, "ForemanRigger_OnDied")