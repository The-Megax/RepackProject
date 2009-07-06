--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GlasshideBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("GlasshideBasilisk_CrystalFlash", 12000, 2)
end

function GlasshideBasilisk_CrystalFlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5106, pUnit:GetMainTank()) 
end

function GlasshideBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlasshideBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlasshideBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5419, 1, "GlasshideBasilisk_OnCombat")
RegisterUnitEvent(5419, 2, "GlasshideBasilisk_OnLeaveCombat")
RegisterUnitEvent(5419, 3, "GlasshideBasilisk_OnKilledTarget")
RegisterUnitEvent(5419, 4, "GlasshideBasilisk_OnDied")