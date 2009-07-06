--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThistlefurAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurAvenger_Vengeance", 13000, 0)
end

function ThistlefurAvenger_Vengeance(pUnit, Event) 
pUnit:CastSpell(8602) 
end

function ThistlefurAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3925, 1, "ThistlefurAvenger_OnCombat")
RegisterUnitEvent(3925, 2, "ThistlefurAvenger_OnLeaveCombat")
RegisterUnitEvent(3925, 3, "ThistlefurAvenger_OnKilledTarget")
RegisterUnitEvent(3925, 4, "ThistlefurAvenger_OnDied")