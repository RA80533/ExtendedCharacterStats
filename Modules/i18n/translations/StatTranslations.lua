---@type i18n
local i18n = ECSLoader:ImportModule("i18n")

local statTranslations = {
    ["General"] = {
        ["enUS"] = true,
        ["deDE"] = "Allgemein",
        ["frFR"] = "Général",
        ["zhCN"] = "一般",
        ["ruRU"] = "Основные",
    },
    ["Movement Speed"] = {
        ["enUS"] = true,
        ["deDE"] = "Geschwindigkeit",
        ["frFR"] = "Vitesse de déplacement",
        ["zhCN"] = "移动速度",
        ["ruRU"] = "Скорость движения",
    },
    ["Melee"] = {
        ["enUS"] = true,
        ["deDE"] = "Nahkampf",
        ["frFR"] = "Mêlée",
        ["zhCN"] = "近战",
        ["ruRU"] = "Ближний бой",
    },
    ["Attack Power"] = {
        ["enUS"] = true,
        ["deDE"] = "Angriffskraft",
        ["frFR"] = "Puissance d'attaque",
        ["zhCN"] = "攻击强度",
        ["ruRU"] = "Сила атаки",
    },
    ["Crit Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Kritische Chance",
        ["frFR"] = "Chances de critique",
        ["zhCN"] = "暴击几率",
        ["ruRU"] = "Крит",
    },
    ["Expertise"] = {
        ["enUS"] = true,
        ["deDE"] = "Waffenkundewertung",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Мастерство",
    },
    ["Hit"] = {
        ["enUS"] = true,
        ["deDE"] = "Trefferchance",
        ["frFR"] = "Toucher",
        ["zhCN"] = "命中",
        ["ruRU"] = "Меткость",
    },
    ["Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Wertung",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Меткость",
    },
    ["Bonus"] = {
        ["enUS"] = true,
        ["deDE"] = true,
        ["frFR"] = false,
        ["zhCN"] = "命中",
        ["ruRU"] = "Бонус",
    },
    ["Miss"] = {
        ["enUS"] = true,
        ["deDE"] = "Verfehlen",
        ["frFR"] = "Rater",
        ["zhCN"] = "未命中",
        ["ruRU"] = "Сопротивление",
    },
    ["Miss (Lvl + 3)"] = {
        ["enUS"] = true,
        ["deDE"] = "Verfehlen (Lvl + 3)",
        ["frFR"] = "Rater (Lvl + 3)",
        ["zhCN"] = "未命中 (等级 + 3)",
        ["ruRU"] = "Сопрот. (+3 ур.)",
    },
    ["Attack Speed"] = {
        ["enUS"] = true,
        ["deDE"] = "Angriffstempo",
        ["frFR"] = "Vitesse d'attaque",
        ["zhCN"] = false,
        ["ruRU"] = "Скорость атаки",
    },
    ["Main Hand"] = {
        ["enUS"] = true,
        ["deDE"] = "Waffenhand",
        ["frFR"] = "Main d'arme",
        ["zhCN"] = false,
        ["ruRU"] = "Правая рука",
    },
    ["Off Hand"] = {
        ["enUS"] = true,
        ["deDE"] = "Schildhand",
        ["frFR"] = "Main de bouclier",
        ["zhCN"] = false,
        ["ruRU"] = "Левая рука",
    },
    ["Ranged"] = {
        ["enUS"] = true,
        ["deDE"] = "Fernkampf",
        ["frFR"] = "A distance",
        ["zhCN"] = "远程",
        ["ruRU"] = "Дальний бой",
    },
    ["Armor"] = {
        ["enUS"] = true,
        ["deDE"] = "Rüstung",
        ["frFR"] = "Armure",
        ["zhCN"] = "护甲",
        ["ruRU"] = "Броня",
    },
    ["Crit Immune"] = {
        ["enUS"] = true,
        ["deDE"] = "Krit. Immun",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Крит иммун",
    },
    ["Crit Reduction"] = {
        ["enUS"] = true,
        ["deDE"] = "Krit. Reduzierung",
        ["frFR"] = false,
        ["zhCN"] = false,
        ["ruRU"] = "Снижение крита",
    },
    ["Defense Rating"] = {
        ["enUS"] = true,
        ["deDE"] = "Verteidigungswertung",
        ["frFR"] = "Score de défense",
        ["zhCN"] = false,
        ["ruRU"] = "Доп. защита",
    },
    ["Defense"] = {
        ["enUS"] = true,
        ["deDE"] = "Verteidigung",
        ["frFR"] = "Défense",
        ["zhCN"] = "防御",
        ["ruRU"] = "Защита",
    },
    ["Block Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Blockchance",
        ["frFR"] = "Chances de bloquer",
        ["zhCN"] = "格挡几率",
        ["ruRU"] = "Шанс блока",
    },
    ["Block Value"] = {
        ["enUS"] = true,
        ["deDE"] = "Blockwertung",
        ["frFR"] = "Bloquage",
        ["zhCN"] = "格挡值",
        ["ruRU"] = "Блок",
    },
    ["Parry Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Parrierchance",
        ["frFR"] = "Chances de parrer",
        ["zhCN"] = "招架几率",
        ["ruRU"] = "Парирование",
    },
    ["Dodge Chance"] = {
        ["enUS"] = true,
        ["deDE"] = "Ausweichchance",
        ["frFR"] = "Chances d'esquiver",
        ["zhCN"] = "躲闪几率",
        ["ruRU"] = "Уклонение",
    },
    ["Resilience"] = {
        ["enUS"] = true,
        ["deDE"] = "Abhärtung",
        ["frFR"] = "Résilience",
        ["zhCN"] = false,
        ["ruRU"] = "Устойчивость",
    },
    ["Mana"] = {
        ["enUS"] = true,
        ["deDE"] = true,
        ["frFR"] = false,
        ["zhCN"] = "法力回复",
        ["ruRU"] = "Мана",
    },
    ["MP5 (Items)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Gegenstände)",
        ["frFR"] = "MP5 (Objets)",
        ["zhCN"] = "装备回蓝",
        ["ruRU"] = "MP5 (экип.)",
    },
    ["MP5 (Spirit)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Willenskraft)",
        ["frFR"] = "MP5 (Esprit)",
        ["zhCN"] = "精神回蓝",
        ["ruRU"] = "MP5 (дух)",
    },
    ["MP5 (Buffs)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Stärkungszauber)",
        ["frFR"] = "MP5 (Amélioration)",
        ["zhCN"] = "增益回蓝",
        ["ruRU"] = "MP5 (баффы)",
    },
    ["MP5 (Casting)"] = {
        ["enUS"] = true,
        ["deDE"] = "MP5 (Zaubernd)",
        ["frFR"] = "MP5 (Lancer)",
        ["zhCN"] = "附魔回蓝",
        ["ruRU"] = "MP5 (каст)",
    },
    ["Spell"] = {
        ["enUS"] = true,
        ["deDE"] = "Zauber",
        ["frFR"] = "Sorts",
        ["zhCN"] = "法术强度",
        ["ruRU"] = "Заклинания",
    },
    ["Penetration"] = {
        ["enUS"] = true,
        ["deDE"] = "Durchschlagskraft",
        ["frFR"] = "Pénétration",
        ["zhCN"] = false,
        ["ruRU"] = "Проник. способ.",
    },
    ["Spell Power"] = {
        ["enUS"] = true,
        ["deDE"] = "Zauberkraft",
        ["frFR"] = "Puissance des sorts",
        ["zhCN"] = "法术强度",
        ["ruRU"] = "Сила заклинаний",
    },
    ["Healing Power"] = {
        ["enUS"] = true,
        ["deDE"] = "Heilungskraft",
        ["frFR"] = "Puissance des soins",
        ["zhCN"] = "法术治疗",
        ["ruRU"] = "Доп. исцеление",
    },
    ["Arcane Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Arkanschaden",
        ["frFR"] = "Dégats des arcanes",
        ["zhCN"] = "奥术伤害",
        ["ruRU"] = "Тайная магия",
    },
    ["Arcane Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Arkan Kritisch",
        ["frFR"] = "Critique des arcanes",
        ["zhCN"] = "奥术暴击",
        ["ruRU"] = "Крит (ТМ)",
    },
    ["Fire Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Feuerschaden",
        ["frFR"] = "Dégats du feu",
        ["zhCN"] = "火焰伤害",
        ["ruRU"] = "Огонь",
    },
    ["Fire Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Feuer Kritisch",
        ["frFR"] = "Critique du feu",
        ["zhCN"] = "火焰暴击",
        ["ruRU"] = "Крит (огонь)",
    },
    ["Frost Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Frostschaden",
        ["frFR"] = "Dégats du givre",
        ["zhCN"] = "冰霜伤害",
        ["ruRU"] = "Лед",
    },
    ["Frost Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Frost Kritisch",
        ["frFR"] = "Critique du givre",
        ["zhCN"] = "冰霜暴击",
        ["ruRU"] = "Крит (лед)",
    },
    ["Holy Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Heiligschaden",
        ["frFR"] = "Dégats du sacré",
        ["zhCN"] = "神圣伤害",
        ["ruRU"] = "Свет",
    },
    ["Holy Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Heilig Kritisch",
        ["frFR"] = "Critique du sacré",
        ["zhCN"] = "神圣暴击",
        ["ruRU"] = "Крит (свет)",
    },
    ["Nature Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Naturschaden",
        ["frFR"] = "Dégats de la nature",
        ["zhCN"] = "自然伤害",
        ["ruRU"] = "Природа",
    },
    ["Nature Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Natur Kritisch",
        ["frFR"] = "Critique de la nature",
        ["zhCN"] = "自然暴击",
        ["ruRU"] = "Крит (природа)",
    },
    ["Physical Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Physischer Schaden",
        ["frFR"] = "Dégats physiques",
        ["zhCN"] = "物理伤害",
        ["ruRU"] = "Физ. урон",
    },
    ["Physical Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Physisch Kritisch",
        ["frFR"] = "Critique physique",
        ["zhCN"] = "物理暴击",
        ["ruRU"] = "Крит (физ.)",
    },
    ["Shadow Damage"] = {
        ["enUS"] = true,
        ["deDE"] = "Schattenschaden",
        ["frFR"] = "Dégats des ombres",
        ["zhCN"] = "暗影伤害",
        ["ruRU"] = "Тьма",
    },
    ["Shadow Crit"] = {
        ["enUS"] = true,
        ["deDE"] = "Schatten Kritisch",
        ["frFR"] = "Critique des ombres",
        ["zhCN"] = "暗影暴击",
        ["ruRU"] = "Крит (тьма)",
    },
}

for k, v in pairs(statTranslations) do
    i18n.translations[k] = v
end