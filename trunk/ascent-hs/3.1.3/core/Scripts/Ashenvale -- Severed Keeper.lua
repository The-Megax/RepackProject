--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SeveredKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredKeeper_ManaBurn", 7000, 0)
end

function SeveredKeeper_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function SeveredKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3803, 1, "SeveredKeeper_OnCombat")
RegisterUnitEvent(3803, 2, "SeveredKeeper_OnLeaveCombat")
RegisterUnitEvent(3803, 3, "SeveredKeeper_OnKilledTarget")
RegisterUnitEvent(3803, 4, "SeveredKeeper_OnDied")