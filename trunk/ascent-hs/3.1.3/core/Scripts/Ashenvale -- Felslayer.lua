--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Felslayer_OnCombat(Unit, Event)
Unit:RegisterEvent("Felslayer_ManaBurn", 8000, 0)
end

function Felslayer_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function Felslayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Felslayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Felslayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3774, 1, "Felslayer_OnCombat")
RegisterUnitEvent(3774, 2, "Felslayer_OnLeaveCombat")
RegisterUnitEvent(3774, 3, "Felslayer_OnKilledTarget")
RegisterUnitEvent(3774, 4, "Felslayer_OnDied")