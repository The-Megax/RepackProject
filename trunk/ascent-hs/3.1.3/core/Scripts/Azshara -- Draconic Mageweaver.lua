--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DraconicMageweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("DraconicMageweaver_ConeofCold", 11000, 0)
Unit:RegisterEvent("DraconicMageweaver_Frostbolt", 8000, 0)
end

function DraconicMageweaver_ConeofCold(pUnit, Event) 
pUnit:CastSpell(12557) 
end

function DraconicMageweaver_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function DraconicMageweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DraconicMageweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DraconicMageweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6131, 1, "DraconicMageweaver_OnCombat")
RegisterUnitEvent(6131, 2, "DraconicMageweaver_OnLeaveCombat")
RegisterUnitEvent(6131, 3, "DraconicMageweaver_OnKilledTarget")
RegisterUnitEvent(6131, 4, "DraconicMageweaver_OnDied")