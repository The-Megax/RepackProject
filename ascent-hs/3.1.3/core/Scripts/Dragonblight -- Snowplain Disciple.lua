--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function SnowplainDisciple_OnCombat(Unit, Event)
Unit:RegisterEvent("SnowplainDisciple_Frostbolt", 6500, 0)
Unit:RegisterEvent("SnowplainDisciple_RenewingBeam", 11000, 0)
end

function SnowplainDisciple_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61730, pUnit:GetMainTank()) 
end

function SnowplainDisciple_RenewingBeam(pUnit, Event) 
pUnit:CastSpell(52011) 
end

function SnowplainDisciple_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SnowplainDisciple_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SnowplainDisciple_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26705, 1, "SnowplainDisciple_OnCombat")
RegisterUnitEvent(26705, 2, "SnowplainDisciple_OnLeaveCombat")
RegisterUnitEvent(26705, 3, "SnowplainDisciple_OnKilledTarget")
RegisterUnitEvent(26705, 4, "SnowplainDisciple_OnDied")