--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function KvaldirMistLord_OnCombat(Unit, Event)
Unit:RegisterEvent("KvaldirMistLord_WaveCrash", 8000, 0)
end

function KvaldirMistLord_WaveCrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49922, pUnit:GetMainTank()) 
end

function KvaldirMistLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KvaldirMistLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KvaldirMistLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25496, 1, "KvaldirMistLord_OnCombat")
RegisterUnitEvent(25496, 2, "KvaldirMistLord_OnLeaveCombat")
RegisterUnitEvent(25496, 3, "KvaldirMistLord_OnKilledTarget")
RegisterUnitEvent(25496, 4, "KvaldirMistLord_OnDied")