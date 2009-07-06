--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function TerrowulfShadowWeaver_OnCombat(Unit, Event)
Unit:RegisterEvent("TerrowulfShadowWeaver_VeilofShadow", 8000, 0)
end

function TerrowulfShadowWeaver_VeilofShadow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7068, pUnit:GetMainTank()) 
end

function TerrowulfShadowWeaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TerrowulfShadowWeaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TerrowulfShadowWeaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3791, 1, "TerrowulfShadowWeaver_OnCombat")
RegisterUnitEvent(3791, 2, "TerrowulfShadowWeaver_OnLeaveCombat")
RegisterUnitEvent(3791, 3, "TerrowulfShadowWeaver_OnKilledTarget")
RegisterUnitEvent(3791, 4, "TerrowulfShadowWeaver_OnDied")