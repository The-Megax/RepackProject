--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function JanelaStouthammer_OnCombat(Unit, Event)
Unit:RegisterEvent("JanelaStouthammer_CrusaderStrike", 8000, 0)
Unit:RegisterEvent("JanelaStouthammer_HolyLight", 12000, 0)
end

function JanelaStouthammer_CrusaderStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14518, pUnit:GetMainTank()) 
end

function JanelaStouthammer_HolyLight(pUnit, Event) 
pUnit:CastSpell(25263) 
end

function JanelaStouthammer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function JanelaStouthammer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function JanelaStouthammer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15443, 1, "JanelaStouthammer_OnCombat")
RegisterUnitEvent(15443, 2, "JanelaStouthammer_OnLeaveCombat")
RegisterUnitEvent(15443, 3, "JanelaStouthammer_OnKilledTarget")
RegisterUnitEvent(15443, 4, "JanelaStouthammer_OnDied")