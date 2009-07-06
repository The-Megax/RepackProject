--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeCultist_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeCultist_Immolate", 8000, 0)
end

function BurningBladeCultist_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11962, pUnit:GetMainTank()) 
end

function BurningBladeCultist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeCultist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeCultist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3199, 1, "BurningBladeCultist_OnCombat")
RegisterUnitEvent(3199, 2, "BurningBladeCultist_OnLeaveCombat")
RegisterUnitEvent(3199, 3, "BurningBladeCultist_OnKilledTarget")
RegisterUnitEvent(3199, 4, "BurningBladeCultist_OnDied")