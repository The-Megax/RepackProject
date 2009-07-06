--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeAugur_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAugur_CurseofThorns", 5000, 1)
Unit:RegisterEvent("BurningBladeAugur_ShadowBolt", 8000, 0)
end

function BurningBladeAugur_CurseofThorns(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6909, pUnit:GetMainTank()) 
end

function BurningBladeAugur_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20807, pUnit:GetMainTank()) 
end

function BurningBladeAugur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAugur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAugur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4663, 1, "BurningBladeAugur_OnCombat")
RegisterUnitEvent(4663, 2, "BurningBladeAugur_OnLeaveCombat")
RegisterUnitEvent(4663, 3, "BurningBladeAugur_OnKilledTarget")
RegisterUnitEvent(4663, 4, "BurningBladeAugur_OnDied")