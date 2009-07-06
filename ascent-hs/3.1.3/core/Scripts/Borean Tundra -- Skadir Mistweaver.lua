--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SkadirMistweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("SkadirMistweaver_MistofStrangulation", 8000, 0)
end

function SkadirMistweaver_MistofStrangulation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49816, pUnit:GetMainTank()) 
end

function SkadirMistweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkadirMistweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkadirMistweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25613, 1, "SkadirMistweaver_OnCombat")
RegisterUnitEvent(25613, 2, "SkadirMistweaver_OnLeaveCombat")
RegisterUnitEvent(25613, 3, "SkadirMistweaver_OnKilledTarget")
RegisterUnitEvent(25613, 4, "SkadirMistweaver_OnDied")