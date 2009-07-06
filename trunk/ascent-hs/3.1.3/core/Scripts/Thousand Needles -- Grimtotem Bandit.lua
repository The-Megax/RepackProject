--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function GrimtotemBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemBandit_Disarm", 8000, 0)
Unit:RegisterEvent("GrimtotemBandit_Kick", 9000, 0)
end

function GrimtotemBandit_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function GrimtotemBandit_Kick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11978, pUnit:GetMainTank()) 
end

function GrimtotemBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10758, 1, "GrimtotemBandit_OnCombat")
RegisterUnitEvent(10758, 2, "GrimtotemBandit_OnLeaveCombat")
RegisterUnitEvent(10758, 3, "GrimtotemBandit_OnKilledTarget")
RegisterUnitEvent(10758, 4, "GrimtotemBandit_OnDied")