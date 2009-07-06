--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeAcolyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeAcolyte_CurseofAgony", 8000, 2)
Unit:RegisterEvent("BurningBladeAcolyte_Inmolate", 3000, 2)
end

function BurningBladeAcolyte_CurseofAgony(pUnit, Event) 
pUnit:FullCastSpellOnTarget(980, pUnit:GetMainTank()) 
end

function BurningBladeAcolyte_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(707, pUnit:GetMainTank()) 
end

function BurningBladeAcolyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeAcolyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeAcolyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3380, 1, "BurningBladeAcolyte_OnCombat")
RegisterUnitEvent(3380, 2, "BurningBladeAcolyte_OnLeaveCombat")
RegisterUnitEvent(3380, 3, "BurningBladeAcolyte_OnKilledTarget")
RegisterUnitEvent(3380, 4, "BurningBladeAcolyte_OnDied")