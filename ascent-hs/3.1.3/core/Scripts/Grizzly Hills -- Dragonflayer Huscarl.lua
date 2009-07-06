--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function DragonflayerHuscarl_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonflayerHuscarl_Cleave", 8000, 0)
Unit:RegisterEvent("DragonflayerHuscarl_DemoralizingShout", 3000, 1)
Unit:RegisterEvent("DragonflayerHuscarl_Disarm", 10000, 0)
Unit:RegisterEvent("DragonflayerHuscarl_Pummel", 15000, 0)
Unit:RegisterEvent("DragonflayerHuscarl_Squish", 5500, 0)
Unit:RegisterEvent("DragonflayerHuscarl_Whirlwind", 6500, 0)
end

function DragonflayerHuscarl_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function DragonflayerHuscarl_DemoralizingShout(pUnit, Event) 
pUnit:CastSpell(13730) 
end

function DragonflayerHuscarl_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function DragonflayerHuscarl_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function DragonflayerHuscarl_Squish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52223, pUnit:GetMainTank()) 
end

function DragonflayerHuscarl_Whirlwind(pUnit, Event) 
pUnit:CastSpell(15578) 
end

function DragonflayerHuscarl_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonflayerHuscarl_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonflayerHuscarl_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27260, 1, "DragonflayerHuscarl_OnCombat")
RegisterUnitEvent(27260, 2, "DragonflayerHuscarl_OnLeaveCombat")
RegisterUnitEvent(27260, 3, "DragonflayerHuscarl_OnKilledTarget")
RegisterUnitEvent(27260, 4, "DragonflayerHuscarl_OnDied")