--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DukeVallenhal_OnCombat(Unit, Event)
Unit:RegisterEvent("DukeVallenhal_BloodPresence", 1000, 1)
Unit:RegisterEvent("DukeVallenhal_Bloodworm", 4000, 1)
end

function DukeVallenhal_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function DukeVallenhal_Bloodworm(pUnit, Event) 
pUnit:CastSpell(51879) 
end

function DukeVallenhal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DukeVallenhal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DukeVallenhal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26926, 1, "DukeVallenhal_OnCombat")
RegisterUnitEvent(26926, 2, "DukeVallenhal_OnLeaveCombat")
RegisterUnitEvent(26926, 3, "DukeVallenhal_OnKilledTarget")
RegisterUnitEvent(26926, 4, "DukeVallenhal_OnDied")