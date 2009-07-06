--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KerlonianEvershade_OnCombat(Unit, Event)
Unit:RegisterEvent("KerlonianEvershade_BearForm", 1000, 1)
end

function KerlonianEvershade_BearForm(pUnit, Event) 
pUnit:CastSpell(18309) 
end

function KerlonianEvershade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KerlonianEvershade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KerlonianEvershade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11218, 1, "KerlonianEvershade_OnCombat")
RegisterUnitEvent(11218, 2, "KerlonianEvershade_OnLeaveCombat")
RegisterUnitEvent(11218, 3, "KerlonianEvershade_OnKilledTarget")
RegisterUnitEvent(11218, 4, "KerlonianEvershade_OnDied")