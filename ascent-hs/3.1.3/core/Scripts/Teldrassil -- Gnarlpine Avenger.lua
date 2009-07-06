--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GnarlpineAvenger_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineAvenger_GnarlpineVengance", 8000, 0)
end

function GnarlpineAvenger_GnarlpineVengance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineAvenger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineAvenger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineAvenger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2011, 1, "GnarlpineAvenger_OnCombat")
RegisterUnitEvent(2011, 2, "GnarlpineAvenger_OnLeaveCombat")
RegisterUnitEvent(2011, 3, "GnarlpineAvenger_OnKilledTarget")
RegisterUnitEvent(2011, 4, "GnarlpineAvenger_OnDied")