--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeNeophyte_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeNeophyte_Inmolate", 8000, 0)
end

function BurningBladeNeophyte_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function BurningBladeNeophyte_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeNeophyte_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeNeophyte_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3196, 1, "BurningBladeNeophyte_OnCombat")
RegisterUnitEvent(3196, 2, "BurningBladeNeophyte_OnLeaveCombat")
RegisterUnitEvent(3196, 3, "BurningBladeNeophyte_OnKilledTarget")
RegisterUnitEvent(3196, 4, "BurningBladeNeophyte_OnDied")