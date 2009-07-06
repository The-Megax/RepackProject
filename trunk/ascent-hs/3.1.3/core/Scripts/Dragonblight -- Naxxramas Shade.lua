--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function NaxxramasShade_OnCombat(Unit, Event)
Unit:RegisterEvent("NaxxramasShade_BlinkStrike", 6000, 0)
Unit:RegisterEvent("NaxxramasShade_DarkStrike", 5500, 0)
end

function NaxxramasShade_BlinkStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49961, pUnit:GetMainTank()) 
end

function NaxxramasShade_DarkStrike(pUnit, Event) 
pUnit:CastSpell(38926) 
end

function NaxxramasShade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NaxxramasShade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NaxxramasShade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27824, 1, "NaxxramasShade_OnCombat")
RegisterUnitEvent(27824, 2, "NaxxramasShade_OnLeaveCombat")
RegisterUnitEvent(27824, 3, "NaxxramasShade_OnKilledTarget")
RegisterUnitEvent(27824, 4, "NaxxramasShade_OnDied")