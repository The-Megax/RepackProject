--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThistlefurTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurTotemic_HealingWard", 12000, 0)
end

function ThistlefurTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(6274) 
end

function ThistlefurTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3922, 1, "ThistlefurTotemic_OnCombat")
RegisterUnitEvent(3922, 2, "ThistlefurTotemic_OnLeaveCombat")
RegisterUnitEvent(3922, 3, "ThistlefurTotemic_OnKilledTarget")
RegisterUnitEvent(3922, 4, "ThistlefurTotemic_OnDied")