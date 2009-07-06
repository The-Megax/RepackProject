--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Drakaguul_OnCombat(Unit, Event)
Unit:RegisterEvent("Drakaguul_BerserkerCharge", 10000, 0)
Unit:RegisterEvent("Drakaguul_DrakaguulsSoldiers", 12000, 0)
end

function Drakaguul_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52460, pUnit:GetMainTank()) 
end

function Drakaguul_DrakaguulsSoldiers(pUnit, Event) 
pUnit:CastSpell(52457) 
end

function Drakaguul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drakaguul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drakaguul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26919, 1, "Drakaguul_OnCombat")
RegisterUnitEvent(26919, 2, "Drakaguul_OnLeaveCombat")
RegisterUnitEvent(26919, 3, "Drakaguul_OnKilledTarget")
RegisterUnitEvent(26919, 4, "Drakaguul_OnDied")