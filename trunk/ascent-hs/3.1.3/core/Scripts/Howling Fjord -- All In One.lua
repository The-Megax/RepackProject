--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function MadJonahSterling_OnCombat(Unit, Event)
Unit:RegisterEvent("MadJonahSterling_WildlyFlailing", 6000, 0)
end

function MadJonahSterling_WildlyFlailing(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50188, pUnit:GetMainTank()) 
end

function MadJonahSterling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MadJonahSterling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MadJonahSterling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24742, 1, "MadJonahSterling_OnCombat")
RegisterUnitEvent(24742, 2, "MadJonahSterling_OnLeaveCombat")
RegisterUnitEvent(24742, 3, "MadJonahSterling_OnKilledTarget")
RegisterUnitEvent(24742, 4, "MadJonahSterling_OnDied")

function Scoodles_OnCombat(Unit, Event)
Unit:RegisterEvent("Scoodles_FlipperThwack", 7000, 0)
Unit:RegisterEvent("Scoodles_PowerfulBite", 6000, 0)
end

function Scoodles_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function Scoodles_PowerfulBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48287, pUnit:GetMainTank()) 
end

function Scoodles_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scoodles_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scoodles_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24899, 1, "Scoodles_OnCombat")
RegisterUnitEvent(24899, 2, "Scoodles_OnLeaveCombat")
RegisterUnitEvent(24899, 3, "Scoodles_OnKilledTarget")
RegisterUnitEvent(24899, 4, "Scoodles_OnDied")

function AnimatedPlagueSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("AnimatedPlagueSlime_DarkSludge", 4000, 2)
end

function AnimatedPlagueSlime_DarkSludge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3335, pUnit:GetMainTank()) 
end

function AnimatedPlagueSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnimatedPlagueSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnimatedPlagueSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24279, 1, "AnimatedPlagueSlime_OnCombat")
RegisterUnitEvent(24279, 2, "AnimatedPlagueSlime_OnLeaveCombat")
RegisterUnitEvent(24279, 3, "AnimatedPlagueSlime_OnKilledTarget")
RegisterUnitEvent(24279, 4, "AnimatedPlagueSlime_OnDied")

function ApothecaryHanes_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryHanes_HealingPotion", 12000, 0)
end

function ApothecaryHanes_HealingPotion(pUnit, Event) 
pUnit:CastSpell(17534) 
end

function ApothecaryHanes_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryHanes_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryHanes_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23784, 1, "ApothecaryHanes_OnCombat")
RegisterUnitEvent(23784, 2, "ApothecaryHanes_OnLeaveCombat")
RegisterUnitEvent(23784, 3, "ApothecaryHanes_OnKilledTarget")
RegisterUnitEvent(23784, 4, "ApothecaryHanes_OnDied")

function BinderMurdis_OnCombat(Unit, Event)
Unit:RegisterEvent("BinderMurdis_FlameShock", 7000, 0)
Unit:RegisterEvent("BinderMurdis_RuneofBinding", 11000, 0)
end

function BinderMurdis_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15039, pUnit:GetMainTank()) 
end

function BinderMurdis_RuneofBinding(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48599, pUnit:GetMainTank()) 
end

function BinderMurdis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BinderMurdis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BinderMurdis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24334, 1, "BinderMurdis_OnCombat")
RegisterUnitEvent(24334, 2, "BinderMurdis_OnLeaveCombat")
RegisterUnitEvent(24334, 3, "BinderMurdis_OnKilledTarget")
RegisterUnitEvent(24334, 4, "BinderMurdis_OnDied")

function Bjomolf_OnCombat(Unit, Event)
Unit:RegisterEvent("Bjomolf_GnawBone", 8000, 0)
end

function Bjomolf_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Bjomolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bjomolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bjomolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24516, 1, "Bjomolf_OnCombat")
RegisterUnitEvent(24516, 2, "Bjomolf_OnLeaveCombat")
RegisterUnitEvent(24516, 3, "Bjomolf_OnKilledTarget")
RegisterUnitEvent(24516, 4, "Bjomolf_OnDied")

function BjornHalgurdsson_OnCombat(Unit, Event)
Unit:RegisterEvent("BjornHalgurdsson_CrushArmor", 5000, 0)
Unit:RegisterEvent("BjornHalgurdsson_MortalStrike", 7000, 0)
end

function BjornHalgurdsson_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33661, pUnit:GetMainTank()) 
end

function BjornHalgurdsson_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function BjornHalgurdsson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BjornHalgurdsson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BjornHalgurdsson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24238, 1, "BjornHalgurdsson_OnCombat")
RegisterUnitEvent(24238, 2, "BjornHalgurdsson_OnLeaveCombat")
RegisterUnitEvent(24238, 3, "BjornHalgurdsson_OnKilledTarget")
RegisterUnitEvent(24238, 4, "BjornHalgurdsson_OnDied")

function BlackConradsGhost_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackConradsGhost_BladeFlurry", 11000, 0)
Unit:RegisterEvent("BlackConradsGhost_GhostlyStrike", 8000, 0)
end

function BlackConradsGhost_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(51211) 
end

function BlackConradsGhost_GhostlyStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31022, pUnit:GetMainTank()) 
end

function BlackConradsGhost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackConradsGhost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackConradsGhost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24790, 1, "BlackConradsGhost_OnCombat")
RegisterUnitEvent(24790, 2, "BlackConradsGhost_OnLeaveCombat")
RegisterUnitEvent(24790, 3, "BlackConradsGhost_OnKilledTarget")
RegisterUnitEvent(24790, 4, "BlackConradsGhost_OnDied")

function BlacksouledKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksouledKeeper_Wrath", 5000, 0)
end

function BlacksouledKeeper_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43619, pUnit:GetMainTank()) 
end

function BlacksouledKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksouledKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksouledKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23875, 1, "BlacksouledKeeper_OnCombat")
RegisterUnitEvent(23875, 2, "BlacksouledKeeper_OnLeaveCombat")
RegisterUnitEvent(23875, 3, "BlacksouledKeeper_OnKilledTarget")
RegisterUnitEvent(23875, 4, "BlacksouledKeeper_OnDied")

function BloodShade_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodShade_VexedBloodoftheAncestors", 6000, 0)
end

function BloodShade_VexedBloodoftheAncestors(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49843, pUnit:GetMainTank()) 
end

function BloodShade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodShade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodShade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24872, 1, "BloodShade_OnCombat")
RegisterUnitEvent(24872, 2, "BloodShade_OnLeaveCombat")
RegisterUnitEvent(24872, 3, "BloodShade_OnKilledTarget")
RegisterUnitEvent(24872, 4, "BloodShade_OnDied")

function BloodthirstyWorg_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodthirstyWorg_InfectedBite", 10000, 0)
end

function BloodthirstyWorg_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function BloodthirstyWorg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodthirstyWorg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodthirstyWorg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24475, 1, "BloodthirstyWorg_OnCombat")
RegisterUnitEvent(24475, 2, "BloodthirstyWorg_OnLeaveCombat")
RegisterUnitEvent(24475, 3, "BloodthirstyWorg_OnKilledTarget")
RegisterUnitEvent(24475, 4, "BloodthirstyWorg_OnDied")

function BullLionSeal_OnCombat(Unit, Event)
Unit:RegisterEvent("BullLionSeal_FlipperThwack", 6000, 0)
end

function BullLionSeal_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function BullLionSeal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BullLionSeal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BullLionSeal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26866, 1, "BullLionSeal_OnCombat")
RegisterUnitEvent(26866, 2, "BullLionSeal_OnLeaveCombat")
RegisterUnitEvent(26866, 3, "BullLionSeal_OnKilledTarget")
RegisterUnitEvent(26866, 4, "BullLionSeal_OnDied")

function CaldemereSnapper_OnCombat(Unit, Event)
Unit:RegisterEvent("CaldemereSnapper_ClawGrasp", 10000, 0)
end

function CaldemereSnapper_ClawGrasp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49978, pUnit:GetMainTank()) 
end

function CaldemereSnapper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaldemereSnapper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaldemereSnapper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24287, 1, "CaldemereSnapper_OnCombat")
RegisterUnitEvent(24287, 2, "CaldemereSnapper_OnLeaveCombat")
RegisterUnitEvent(24287, 3, "CaldemereSnapper_OnKilledTarget")
RegisterUnitEvent(24287, 4, "CaldemereSnapper_OnDied")

function CampWinterhoofBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("CampWinterhoofBrave_Cleave", 9000, 0)
Unit:RegisterEvent("CampWinterhoofBrave_Shoot", 6000, 0)
end

function CampWinterhoofBrave_Cleave(pUnit, Event) 
pUnit:CastSpell(40505) 
end

function CampWinterhoofBrave_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23337, pUnit:GetMainTank()) 
end

function CampWinterhoofBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CampWinterhoofBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CampWinterhoofBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24031, 1, "CampWinterhoofBrave_OnCombat")
RegisterUnitEvent(24031, 2, "CampWinterhoofBrave_OnLeaveCombat")
RegisterUnitEvent(24031, 3, "CampWinterhoofBrave_OnKilledTarget")
RegisterUnitEvent(24031, 4, "CampWinterhoofBrave_OnDied")

function CaptainOlster_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainOlster_ConcussionBlow", 12000, 0)
Unit:RegisterEvent("CaptainOlster_Intercept", 9000, 0)
Unit:RegisterEvent("CaptainOlster_MortalStrike", 7000, 0)
end

function CaptainOlster_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function CaptainOlster_Intercept(pUnit, Event) 
pUnit:FullCastSpellOnTarget(27577, pUnit:GetMainTank()) 
end

function CaptainOlster_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function CaptainOlster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainOlster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainOlster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23962, 1, "CaptainOlster_OnCombat")
RegisterUnitEvent(23962, 2, "CaptainOlster_OnLeaveCombat")
RegisterUnitEvent(23962, 3, "CaptainOlster_OnKilledTarget")
RegisterUnitEvent(23962, 4, "CaptainOlster_OnDied")

function CeleaFrozenmane_OnCombat(Unit, Event)
Unit:RegisterEvent("CeleaFrozenmane_Shoot", 6000, 0)
end

function CeleaFrozenmane_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22121, pUnit:GetMainTank()) 
end

function CeleaFrozenmane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CeleaFrozenmane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CeleaFrozenmane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24032, 1, "CeleaFrozenmane_OnCombat")
RegisterUnitEvent(24032, 2, "CeleaFrozenmane_OnLeaveCombat")
RegisterUnitEvent(24032, 3, "CeleaFrozenmane_OnKilledTarget")
RegisterUnitEvent(24032, 4, "CeleaFrozenmane_OnDied")

function ChillNymph_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillNymph_SummonScarletBud", 1000, 1)
Unit:RegisterEvent("ChillNymph_Wrath", 6000, 0)
end

function ChillNymph_SummonScarletBud(pUnit, Event) 
pUnit:CastSpell(42388) 
end

function ChillNymph_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function ChillNymph_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillNymph_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillNymph_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23678, 1, "ChillNymph_OnCombat")
RegisterUnitEvent(23678, 2, "ChillNymph_OnLeaveCombat")
RegisterUnitEvent(23678, 3, "ChillNymph_OnKilledTarget")
RegisterUnitEvent(23678, 4, "ChillNymph_OnDied")

function ChillmereCoastrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillmereCoastrunner_InstantPoison", 8000, 0)
Unit:RegisterEvent("ChillmereCoastrunner_Rupture", 10000, 0)
end

function ChillmereCoastrunner_InstantPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(28428, pUnit:GetMainTank()) 
end

function ChillmereCoastrunner_Rupture(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14874, pUnit:GetMainTank()) 
end

function ChillmereCoastrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillmereCoastrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillmereCoastrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24459, 1, "ChillmereCoastrunner_OnCombat")
RegisterUnitEvent(24459, 2, "ChillmereCoastrunner_OnLeaveCombat")
RegisterUnitEvent(24459, 3, "ChillmereCoastrunner_OnKilledTarget")
RegisterUnitEvent(24459, 4, "ChillmereCoastrunner_OnDied")

function ChillmereOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillmereOracle_FrostNova", 10000, 0)
Unit:RegisterEvent("ChillmereOracle_HexoftheMurloc", 8000, 2)
Unit:RegisterEvent("ChillmereOracle_IceLance", 6000, 0)
end

function ChillmereOracle_FrostNova(pUnit, Event) 
pUnit:CastSpell(11831) 
end

function ChillmereOracle_HexoftheMurloc(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49935, pUnit:GetMainTank()) 
end

function ChillmereOracle_IceLance(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49906, pUnit:GetMainTank()) 
end

function ChillmereOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillmereOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillmereOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24461, 1, "ChillmereOracle_OnCombat")
RegisterUnitEvent(24461, 2, "ChillmereOracle_OnLeaveCombat")
RegisterUnitEvent(24461, 3, "ChillmereOracle_OnKilledTarget")
RegisterUnitEvent(24461, 4, "ChillmereOracle_OnDied")

function ChillmereTidehunter_OnCombat(Unit, Event)
Unit:RegisterEvent("ChillmereTidehunter_Net", 8000, 0)
Unit:RegisterEvent("ChillmereTidehunter_Throw", 6000, 0)
end

function ChillmereTidehunter_Net(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6533, pUnit:GetMainTank()) 
end

function ChillmereTidehunter_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38556, pUnit:GetMainTank()) 
end

function ChillmereTidehunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChillmereTidehunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChillmereTidehunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24460, 1, "ChillmereTidehunter_OnCombat")
RegisterUnitEvent(24460, 2, "ChillmereTidehunter_OnLeaveCombat")
RegisterUnitEvent(24460, 3, "ChillmereTidehunter_OnKilledTarget")
RegisterUnitEvent(24460, 4, "ChillmereTidehunter_OnDied")


