---------------------------------------------
-- Lodesong
--
-- Description: Weighs down targets in an area of effect.
---------------------------------------------
require("scripts/globals/monstertpmoves");
require("scripts/globals/settings");
require("scripts/globals/status");
---------------------------------------------

function onMobSkillCheck(target,mob,skill)
    -- can only used if not silenced
    if (mob:getMainJob() == dsp.job.BRD and mob:hasStatusEffect(dsp.effect.SILENCE) == false) then
        return 0;
    end
    return 1;
end;

function onMobWeaponSkill(target, mob, skill)
    skill:setMsg(MobStatusEffectMove(mob, target, dsp.effect.WEIGHT, 50, 0, 50));

    return typeEffect;
end;
