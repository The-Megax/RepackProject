--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KvaldirMistweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("KvaldirMistweaver_MistofStrangulation", 8000, 0)
end

function KvaldirMistweaver_MistofStrangulation(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49816, pUnit:GetMainTank()) 
end

function KvaldirMistweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KvaldirMistweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KvaldirMistweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25479, 1, "KvaldirMistweaver_OnCombat")
RegisterUnitEvent(25479, 2, "KvaldirMistweaver_OnLeaveCombat")
RegisterUnitEvent(25479, 3, "KvaldirMistweaver_OnKilledTarget")
RegisterUnitEvent(25479, 4, "KvaldirMistweaver_OnDied")