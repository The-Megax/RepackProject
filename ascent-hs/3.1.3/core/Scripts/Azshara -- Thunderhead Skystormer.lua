--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThunderheadSkystormer_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadSkystormer_Shock", 6000, 0)
Unit:RegisterEvent("ThunderheadSkystormer_LightningCloud", 10000, 0)
end

function ThunderheadSkystormer_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function ThunderheadSkystormer_LightningCloud(pUnit, Event) 
pUnit:CastSpell(6535) 
end

function ThunderheadSkystormer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadSkystormer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadSkystormer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6378, 1, "ThunderheadSkystormer_OnCombat")
RegisterUnitEvent(6378, 2, "ThunderheadSkystormer_OnLeaveCombat")
RegisterUnitEvent(6378, 3, "ThunderheadSkystormer_OnKilledTarget")
RegisterUnitEvent(6378, 4, "ThunderheadSkystormer_OnDied")