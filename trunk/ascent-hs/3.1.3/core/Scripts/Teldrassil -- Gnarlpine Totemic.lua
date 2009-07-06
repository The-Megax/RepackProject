--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function GnarlpineTotemic_OnCombat(Unit, Event)
Unit:RegisterEvent("GnarlpineTotemic_GnarlpineVengeance", 10000, 0)
Unit:RegisterEvent("GnarlpineTotemic_HealingWard", 12000, 0)
end

function GnarlpineTotemic_GnarlpineVengeance(pUnit, Event) 
pUnit:CastSpell(5628) 
end

function GnarlpineTotemic_HealingWard(pUnit, Event) 
pUnit:CastSpell(5605) 
end

function GnarlpineTotemic_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GnarlpineTotemic_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GnarlpineTotemic_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2014, 1, "GnarlpineTotemic_OnCombat")
RegisterUnitEvent(2014, 2, "GnarlpineTotemic_OnLeaveCombat")
RegisterUnitEvent(2014, 3, "GnarlpineTotemic_OnKilledTarget")
RegisterUnitEvent(2014, 4, "GnarlpineTotemic_OnDied")