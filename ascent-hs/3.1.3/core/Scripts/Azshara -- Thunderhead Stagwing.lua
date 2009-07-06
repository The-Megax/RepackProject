--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThunderheadStagwing_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadStagwing_Shock", 6000, 0)
Unit:RegisterEvent("ThunderheadStagwing_WingFlap", 8000, 0)
end

function ThunderheadStagwing_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function ThunderheadStagwing_WingFlap(pUnit, Event) 
pUnit:CastSpell(11019) 
end

function ThunderheadStagwing_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadStagwing_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadStagwing_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6377, 1, "ThunderheadStagwing_OnCombat")
RegisterUnitEvent(6377, 2, "ThunderheadStagwing_OnLeaveCombat")
RegisterUnitEvent(6377, 3, "ThunderheadStagwing_OnKilledTarget")
RegisterUnitEvent(6377, 4, "ThunderheadStagwing_OnDied")