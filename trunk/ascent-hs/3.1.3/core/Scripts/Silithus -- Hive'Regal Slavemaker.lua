--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HiveRegalSlavemaker_OnCombat(Unit, Event)
Unit:RegisterEvent("HiveRegalSlavemaker_VolatileInfection", 10000, 0)
end

function HiveRegalSlavemaker_VolatileInfection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3584, pUnit:GetMainTank()) 
end

function HiveRegalSlavemaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HiveRegalSlavemaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HiveRegalSlavemaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11733, 1, "HiveRegalSlavemaker_OnCombat")
RegisterUnitEvent(11733, 2, "HiveRegalSlavemaker_OnLeaveCombat")
RegisterUnitEvent(11733, 3, "HiveRegalSlavemaker_OnKilledTarget")
RegisterUnitEvent(11733, 4, "HiveRegalSlavemaker_OnDied")