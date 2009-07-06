--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Naltaszar_OnCombat(Unit, Event)
Unit:RegisterEvent("Naltaszar_ChainBurn", 10000, 0)
Unit:RegisterEvent("Naltaszar_ChainLightning", 6000, 0)
end

function Naltaszar_ChainBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8211, pUnit:GetRandomPlayer(4)) 
end

function Naltaszar_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15305, pUnit:GetMainTank()) 
end

function Naltaszar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Naltaszar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Naltaszar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4066, 1, "Naltaszar_OnCombat")
RegisterUnitEvent(4066, 2, "Naltaszar_OnLeaveCombat")
RegisterUnitEvent(4066, 3, "Naltaszar_OnKilledTarget")
RegisterUnitEvent(4066, 4, "Naltaszar_OnDied")