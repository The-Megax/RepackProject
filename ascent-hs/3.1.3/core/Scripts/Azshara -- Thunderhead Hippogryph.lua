--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThunderheadHippogryph_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadHippogryph_Shock", 6000, 0)
end

function ThunderheadHippogryph_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function ThunderheadHippogryph_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadHippogryph_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadHippogryph_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6375, 1, "ThunderheadHippogryph_OnCombat")
RegisterUnitEvent(6375, 2, "ThunderheadHippogryph_OnLeaveCombat")
RegisterUnitEvent(6375, 3, "ThunderheadHippogryph_OnKilledTarget")
RegisterUnitEvent(6375, 4, "ThunderheadHippogryph_OnDied")