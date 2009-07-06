--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SaltspittleMuckdweller_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleMuckdweller_Throw", 6000, 0)
end

function SaltspittleMuckdweller_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SaltspittleMuckdweller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleMuckdweller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleMuckdweller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3740, 1, "SaltspittleMuckdweller_OnCombat")
RegisterUnitEvent(3740, 2, "SaltspittleMuckdweller_OnLeaveCombat")
RegisterUnitEvent(3740, 3, "SaltspittleMuckdweller_OnKilledTarget")
RegisterUnitEvent(3740, 4, "SaltspittleMuckdweller_OnDied")