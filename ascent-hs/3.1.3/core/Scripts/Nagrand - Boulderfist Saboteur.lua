--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Boulderfistsaboteur_Spell(Unit, event, miscunit, misc)
    Unit:FullCastSpellOnTarget(32248,Unit:GetClosestPlayer())
end

function Boulderfistsaboteur(Unit, event, miscunit, misc)
    Unit:RegisterEvent("Boulderfistsaboteur_Spell",5000,0)
end

function Boulderfistsaboteur_Death(Unit)
    Unit:RemoveEvents()
end

function Boulderfistsaboteur_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
end

RegisterUnitEvent(18352, 1, "Boulderfistsaboteur")
RegisterUnitEvent(18352, 2, "Boulderfistsaboteur_OnLeaveCombat")
RegisterUnitEvent(18352, 3, "Boulderfistsaboteur_Death")