--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GnarlpineAugur_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineAugur_GnarlpineVengance", 8000, 0)
end

function GnarlpineAugur_GnarlpineVengance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineAugur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineAugur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineAugur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2011, 1, "GnarlpineAugur_OnCombat")
RegisterUnitEvent(2011, 2, "GnarlpineAugur_OnLeaveCombat")
RegisterUnitEvent(2011, 3, "GnarlpineAugur_OnKilledTarget")
RegisterUnitEvent(2011, 4, "GnarlpineAugur_OnDied")