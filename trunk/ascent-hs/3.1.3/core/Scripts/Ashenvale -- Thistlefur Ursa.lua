--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ThistlefurUrsa_OnCombat(Unit, Event)
Unit:RegisterEvent("ThistlefurUrsa_BattleStance", 1000, 1)
Unit:RegisterEvent("ThistlefurUrsa_HeroicStrike", 6000, 0)
end

function ThistlefurUrsa_BattleStance(pUnit, Event) 
pUnit:CastSpell(7165) 
end

function ThistlefurUrsa_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25712, pUnit:GetMainTank()) 
end

function ThistlefurUrsa_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThistlefurUrsa_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThistlefurUrsa_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3921, 1, "ThistlefurUrsa_OnCombat")
RegisterUnitEvent(3921, 2, "ThistlefurUrsa_OnLeaveCombat")
RegisterUnitEvent(3921, 3, "ThistlefurUrsa_OnKilledTarget")
RegisterUnitEvent(3921, 4, "ThistlefurUrsa_OnDied")