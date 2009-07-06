--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function FrostwaveLieutenant_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostwaveLieutenant_FrostNova", 10000, 0)
Unit:RegisterEvent("FrostwaveLieutenant_FrostShock", 8000, 0)
end

function FrostwaveLieutenant_FrostNova(pUnit, Event) 
pUnit:CastSpell(122) 
end

function FrostwaveLieutenant_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8056, pUnit:GetMainTank()) 
end

function FrostwaveLieutenant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostwaveLieutenant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostwaveLieutenant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26116, 1, "FrostwaveLieutenant_OnCombat")
RegisterUnitEvent(26116, 2, "FrostwaveLieutenant_OnLeaveCombat")
RegisterUnitEvent(26116, 3, "FrostwaveLieutenant_OnKilledTarget")
RegisterUnitEvent(26116, 4, "FrostwaveLieutenant_OnDied")