--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ArcticRam_OnCombat(Unit, Event)
Unit:RegisterEvent("ArcticRam_Gore", 8000, 0)
end

function ArcticRam_Gore(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32019, pUnit:GetMainTank()) 
end

function ArcticRam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArcticRam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArcticRam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26426, 1, "ArcticRam_OnCombat")
RegisterUnitEvent(26426, 2, "ArcticRam_OnLeaveCombat")
RegisterUnitEvent(26426, 3, "ArcticRam_OnKilledTarget")
RegisterUnitEvent(26426, 4, "ArcticRam_OnDied")