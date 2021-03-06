--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function BurningBladeReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("BurningBladeReaver_ArcingSmash", 8000, 0)
end

function BurningBladeReaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function BurningBladeReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BurningBladeReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BurningBladeReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4664, 1, "BurningBladeReaver_OnCombat")
RegisterUnitEvent(4664, 2, "BurningBladeReaver_OnLeaveCombat")
RegisterUnitEvent(4664, 3, "BurningBladeReaver_OnKilledTarget")
RegisterUnitEvent(4664, 4, "BurningBladeReaver_OnDied")