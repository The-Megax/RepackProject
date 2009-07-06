--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function CorruptedLothalorAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("CorruptedLothalorAncient_ArcaneDischarge", 6000, 0)
Unit:RegisterEvent("CorruptedLothalorAncient_ArcaneExplosion", 5000, 0)
end

function CorruptedLothalorAncient_ArcaneDischarge(pUnit, Event) 
pUnit:CastSpell(51727) 
end

function CorruptedLothalorAncient_ArcaneExplosion(pUnit, Event) 
pUnit:CastSpell(51725) 
end

function CorruptedLothalorAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CorruptedLothalorAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CorruptedLothalorAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26333, 1, "CorruptedLothalorAncient_OnCombat")
RegisterUnitEvent(26333, 2, "CorruptedLothalorAncient_OnLeaveCombat")
RegisterUnitEvent(26333, 3, "CorruptedLothalorAncient_OnKilledTarget")
RegisterUnitEvent(26333, 4, "CorruptedLothalorAncient_OnDied")