--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Guard_OnCombat(pUnit, Event)
pUnit:RegisterEvent("Guard_Cleave", 5000, 0)
pUnit:RegisterEvent("Guard_Hamstring", 6000, 0)
pUnit:RegisterEvent("Guard_Mortal_Strike", 7000, 0)
end

function Guard_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Guard_OnKillTarget(pUnit, Event)
pUnit:RemoveEvents()
end

function Guard_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
end

RegisterUnitEvent(19529, 1, "Guard_OnCombat")
RegisterUnitEvent(19529, 2, "Guard_OnLeaveCombat")
RegisterUnitEvent(19529, 3, "Guard_OnKillTarget")
RegisterUnitEvent(19529, 4, "Guard_OnDeath")

function Guard_Cleave(pUnit, Event)
pUnit:FullCastSpellOnTarget(15284, GetMainTank())
end

function Guard_Hamstring(pUnit, Event)
pUnit:FullCastSpellOnTarget(9080, GetMainTank())
end

function Guard_Mortal_Strike(pUnit, Event)
pUnit:FullCastSpellOnTarget(16856, GetMainTank())
end
