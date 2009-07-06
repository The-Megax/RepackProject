--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function HighShamanBloodpaw_OnCombat(Unit, Event)
Unit:RegisterEvent("HighShamanBloodpaw_Bloodlust", 11000, 0)
Unit:RegisterEvent("HighShamanBloodpaw_ChainLightning", 10000, 0)
Unit:RegisterEvent("HighShamanBloodpaw_FrostShock", 6000, 0)
Unit:RegisterEvent("HighShamanBloodpaw_LightningBolt", 8000, 0)
end

function HighShamanBloodpaw_Bloodlust(pUnit, Event) 
pUnit:CastSpell(28902) 
end

function HighShamanBloodpaw_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22355, pUnit:GetMainTank()) 
end

function HighShamanBloodpaw_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19133, pUnit:GetMainTank()) 
end

function HighShamanBloodpaw_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22414, pUnit:GetMainTank()) 
end

function HighShamanBloodpaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighShamanBloodpaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighShamanBloodpaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27762, 1, "HighShamanBloodpaw_OnCombat")
RegisterUnitEvent(27762, 2, "HighShamanBloodpaw_OnLeaveCombat")
RegisterUnitEvent(27762, 3, "HighShamanBloodpaw_OnKilledTarget")
RegisterUnitEvent(27762, 4, "HighShamanBloodpaw_OnDied")