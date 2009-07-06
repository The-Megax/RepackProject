--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CampOneqwahBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("CampOneqwahBrave_Cleave", 8000, 0)
end

function CampOneqwahBrave_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function CampOneqwahBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CampOneqwahBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CampOneqwahBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27126, 1, "CampOneqwahBrave_OnCombat")
RegisterUnitEvent(27126, 2, "CampOneqwahBrave_OnLeaveCombat")
RegisterUnitEvent(27126, 3, "CampOneqwahBrave_OnKilledTarget")
RegisterUnitEvent(27126, 4, "CampOneqwahBrave_OnDied")