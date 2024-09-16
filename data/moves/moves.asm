; Characteristics of each move.

MACRO move
	; the animation byte will be filled when the move is loaded
	db \1 ; effect
	db \2 ; power
	db \3 ; type
	db \4 percent ; accuracy
	db \5 ; pp
	db \6 percent ; effect chance
	db \7 ; category
	assert \5 <= 40, "PP must be 40 or less"
ENDM

Moves::
; entries correspond to constants/move_constants.asm
	indirect_table MOVE_LENGTH - 1, 1
	indirect_entries GEN1_MOVES, MovesGen1
	indirect_entries GEN2_MOVES, MovesGen2
	indirect_table_end

PUSHS

SECTION "Moves Gen 1", ROMX

MovesGen1:
	move EFFECT_NORMAL_HIT,         40, NORMAL,        100, 35,   0, PHYSICAL      ;POUND
	move EFFECT_NORMAL_HIT,         50, FIGHTING,      100, 25,   0, PHYSICAL      ;KARATE_CHOP
	move EFFECT_MULTI_HIT,          15, NORMAL,         85, 10,   0, PHYSICAL      ;DOUBLESLAP
	move EFFECT_MULTI_HIT,          18, NORMAL,         85, 15,   0, PHYSICAL      ;COMET_PUNCH
	move EFFECT_NORMAL_HIT,         80, NORMAL,         85, 20,   0, PHYSICAL      ;MEGA_PUNCH
	move EFFECT_PAY_DAY,            40, NORMAL,        100, 20,   0, PHYSICAL      ;PAY_DAY
	move EFFECT_BURN_HIT,           75, FIRE,          100, 15,  10, PHYSICAL      ;FIRE_PUNCH
	move EFFECT_FREEZE_HIT,         75, ICE,           100, 15,  10, PHYSICAL      ;ICE_PUNCH
	move EFFECT_PARALYZE_HIT,       75, ELECTRIC,      100, 15,  10, PHYSICAL      ;THUNDERPUNCH
	move EFFECT_NORMAL_HIT,         40, NORMAL,        100, 35,   0, PHYSICAL      ;SCRATCH
	move EFFECT_NORMAL_HIT,         55, NORMAL,        100, 30,   0, PHYSICAL      ;VICEGRIP
	move EFFECT_OHKO,                0, NORMAL,         30,  5,   0, PHYSICAL      ;GUILLOTINE
	move EFFECT_RAZOR_WIND,         80, NORMAL,         75, 10,   0, SPECIAL       ;RAZOR_WIND
	move EFFECT_ATTACK_UP_2,         0, NORMAL,        100, 30,   0, STATUS        ;SWORDS_DANCE
	move EFFECT_NORMAL_HIT,         50, NORMAL,         95, 30,   0, PHYSICAL      ;CUT
	move EFFECT_GUST,               40, FLYING,        100, 35,   0, SPECIAL       ;GUST
	move EFFECT_NORMAL_HIT,         60, FLYING,        100, 35,   0, PHYSICAL      ;WING_ATTACK
	move EFFECT_FORCE_SWITCH,        0, NORMAL,        100, 20,   0, STATUS        ;WHIRLWIND
	move EFFECT_FLY,                70, FLYING,         95, 15,   0, PHYSICAL      ;FLY
	move EFFECT_TRAP_TARGET,        15, NORMAL,         75, 20,   0, PHYSICAL      ;BIND
	move EFFECT_NORMAL_HIT,         80, NORMAL,         75, 20,   0, PHYSICAL      ;SLAM
	move EFFECT_NORMAL_HIT,         35, GRASS,         100, 10,   0, PHYSICAL      ;VINE_WHIP
	move EFFECT_STOMP,              65, NORMAL,        100, 20,  30, PHYSICAL      ;STOMP
	move EFFECT_DOUBLE_HIT,         30, FIGHTING,      100, 30,   0, PHYSICAL      ;DOUBLE_KICK
	move EFFECT_NORMAL_HIT,        120, NORMAL,         75,  5,   0, PHYSICAL      ;MEGA_KICK
	move EFFECT_JUMP_KICK,          70, FIGHTING,       95, 25,   0, PHYSICAL      ;JUMP_KICK
	move EFFECT_FLINCH_HIT,         60, FIGHTING,       85, 15,  30, PHYSICAL      ;ROLLING_KICK
	move EFFECT_ACCURACY_DOWN,       0, GROUND,        100, 15,   0, STATUS        ;SAND_ATTACK
	move EFFECT_FLINCH_HIT,         70, NORMAL,        100, 15,  30, PHYSICAL      ;HEADBUTT
	move EFFECT_NORMAL_HIT,         65, NORMAL,        100, 25,   0, PHYSICAL      ;HORN_ATTACK
	move EFFECT_MULTI_HIT,          15, NORMAL,         85, 20,   0, PHYSICAL      ;FURY_ATTACK
	move EFFECT_OHKO,                1, NORMAL,         30,  5,   0, PHYSICAL      ;HORN_DRILL
	move EFFECT_NORMAL_HIT,         35, NORMAL,         95, 35,   0, PHYSICAL      ;TACKLE
	move EFFECT_PARALYZE_HIT,       85, NORMAL,        100, 15,  30, PHYSICAL      ;BODY_SLAM
	move EFFECT_TRAP_TARGET,        15, NORMAL,         85, 20,   0, PHYSICAL      ;WRAP
	move EFFECT_RECOIL_HIT,         90, NORMAL,         85, 20,   0, PHYSICAL      ;TAKE_DOWN
	move EFFECT_RAMPAGE,            90, NORMAL,        100, 20,   0, PHYSICAL      ;THRASH
	move EFFECT_RECOIL_HIT,        120, NORMAL,        100, 15,   0, PHYSICAL      ;DOUBLE_EDGE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,        100, 30,   0, STATUS        ;TAIL_WHIP
	move EFFECT_POISON_HIT,         15, POISON,        100, 35,  30, PHYSICAL      ;POISON_STING
	move EFFECT_POISON_MULTI_HIT,   25, BUG,           100, 20,  20, PHYSICAL      ;TWINEEDLE
	move EFFECT_MULTI_HIT,          14, BUG,            85, 20,   0, PHYSICAL      ;PIN_MISSILE
	move EFFECT_DEFENSE_DOWN,        0, NORMAL,        100, 30,   0, STATUS        ;LEER
	move EFFECT_FLINCH_HIT,         60, DARK,          100, 25,  30, PHYSICAL      ;BITE
	move EFFECT_ATTACK_DOWN,         0, NORMAL,        100, 40,   0, STATUS        ;GROWL
	move EFFECT_FORCE_SWITCH,        0, NORMAL,        100, 20,   0, STATUS        ;ROAR
	move EFFECT_SLEEP,               0, NORMAL,         55, 15,   0, STATUS        ;SING
	move EFFECT_CONFUSE,             0, NORMAL,         55, 20,   0, STATUS        ;SUPERSONIC
	move EFFECT_STATIC_DAMAGE,      20, NORMAL,         90, 20,   0, SPECIAL       ;SONICBOOM
	move EFFECT_DISABLE,             0, NORMAL,         55, 20,   0, STATUS        ;DISABLE
	move EFFECT_DEFENSE_DOWN_HIT,   40, POISON,        100, 30,  10, SPECIAL       ;ACID
	move EFFECT_BURN_HIT,           40, FIRE,          100, 25,  10, SPECIAL       ;EMBER
	move EFFECT_BURN_HIT,           95, FIRE,          100, 15,  10, SPECIAL       ;FLAMETHROWER
	move EFFECT_MIST,                0, ICE,           100, 30,   0, STATUS        ;MIST
	move EFFECT_NORMAL_HIT,         40, WATER,         100, 25,   0, SPECIAL       ;WATER_GUN
	move EFFECT_NORMAL_HIT,        120, WATER,          80,  5,   0, SPECIAL       ;HYDRO_PUMP
	move EFFECT_NORMAL_HIT,         95, WATER,         100, 15,   0, SPECIAL       ;SURF
	move EFFECT_FREEZE_HIT,         95, ICE,           100, 10,  10, SPECIAL       ;ICE_BEAM
	move EFFECT_FREEZE_HIT,        120, ICE,            70,  5,  10, SPECIAL       ;BLIZZARD
	move EFFECT_CONFUSE_HIT,        65, PSYCHIC_TYPE,  100, 20,  10, SPECIAL       ;PSYBEAM
	move EFFECT_SPEED_DOWN_HIT,     65, WATER,         100, 20,  10, SPECIAL       ;BUBBLEBEAM
	move EFFECT_ATTACK_DOWN_HIT,    65, ICE,           100, 20,  10, SPECIAL       ;AURORA_BEAM
	move EFFECT_HYPER_BEAM,        150, NORMAL,         90,  5,   0, SPECIAL       ;HYPER_BEAM
	move EFFECT_NORMAL_HIT,         35, FLYING,        100, 35,   0, PHYSICAL      ;PECK
	move EFFECT_NORMAL_HIT,         80, FLYING,        100, 20,   0, PHYSICAL      ;DRILL_PECK
	move EFFECT_RECOIL_HIT,         80, FIGHTING,       80, 25,   0, PHYSICAL      ;SUBMISSION
	move EFFECT_FLINCH_HIT,         50, FIGHTING,       90, 20,  30, PHYSICAL      ;LOW_KICK
	move EFFECT_COUNTER,             1, FIGHTING,      100, 20,   0, PHYSICAL      ;COUNTER
	move EFFECT_LEVEL_DAMAGE,        1, FIGHTING,      100, 20,   0, PHYSICAL      ;SEISMIC_TOSS
	move EFFECT_NORMAL_HIT,         80, NORMAL,        100, 15,   0, PHYSICAL      ;STRENGTH
	move EFFECT_LEECH_HIT,          20, GRASS,         100, 20,   0, SPECIAL       ;ABSORB
	move EFFECT_LEECH_HIT,          40, GRASS,         100, 10,   0, SPECIAL       ;MEGA_DRAIN
	move EFFECT_LEECH_SEED,          0, GRASS,          90, 10,   0, STATUS        ;LEECH_SEED
	move EFFECT_SP_ATK_UP,           0, NORMAL,        100, 40,   0, STATUS        ;GROWTH
	move EFFECT_NORMAL_HIT,         55, GRASS,          95, 25,   0, PHYSICAL      ;RAZOR_LEAF
	move EFFECT_SOLARBEAM,         120, GRASS,         100, 10,   0, SPECIAL       ;SOLARBEAM
	move EFFECT_POISON,              0, POISON,         75, 35,   0, STATUS        ;POISONPOWDER
	move EFFECT_PARALYZE,            0, GRASS,          75, 30,   0, STATUS        ;STUN_SPORE
	move EFFECT_SLEEP,               0, GRASS,          75, 15,   0, STATUS        ;SLEEP_POWDER
	move EFFECT_RAMPAGE,            70, GRASS,         100, 20,   0, SPECIAL       ;PETAL_DANCE
	move EFFECT_SPEED_DOWN,          0, BUG,            95, 40,   0, STATUS        ;STRING_SHOT
	move EFFECT_STATIC_DAMAGE,      40, DRAGON,        100, 10,   0, SPECIAL       ;DRAGON_RAGE
	move EFFECT_TRAP_TARGET,        15, FIRE,           70, 15,   0, SPECIAL       ;FIRE_SPIN
	move EFFECT_PARALYZE_HIT,       40, ELECTRIC,      100, 30,  10, SPECIAL       ;THUNDERSHOCK
	move EFFECT_PARALYZE_HIT,       95, ELECTRIC,      100, 15,  10, SPECIAL       ;THUNDERBOLT
	move EFFECT_PARALYZE,            0, ELECTRIC,      100, 20,   0, STATUS        ;THUNDER_WAVE
	move EFFECT_THUNDER,           120, ELECTRIC,       70, 10,  30, SPECIAL       ;THUNDER
	move EFFECT_NORMAL_HIT,         50, ROCK,           90, 15,   0, PHYSICAL      ;ROCK_THROW
	move EFFECT_EARTHQUAKE,        100, GROUND,        100, 10,   0, PHYSICAL      ;EARTHQUAKE
	move EFFECT_OHKO,                1, GROUND,         30,  5,   0, PHYSICAL      ;FISSURE
	move EFFECT_FLY,                60, GROUND,        100, 10,   0, PHYSICAL      ;DIG
	move EFFECT_TOXIC,               0, POISON,         85, 10,   0, STATUS        ;TOXIC
	move EFFECT_CONFUSE_HIT,        50, PSYCHIC_TYPE,  100, 25,  10, SPECIAL       ;CONFUSION
	move EFFECT_SP_DEF_DOWN_HIT,    90, PSYCHIC_TYPE,  100, 10,  10, SPECIAL       ;PSYCHIC_TYPE_M
	move EFFECT_SLEEP,               0, PSYCHIC_TYPE,   60, 20,   0, STATUS        ;HYPNOSIS
	move EFFECT_ATTACK_UP,           0, PSYCHIC_TYPE,  100, 40,   0, STATUS        ;MEDITATE
	move EFFECT_SPEED_UP_2,          0, PSYCHIC_TYPE,  100, 30,   0, STATUS        ;AGILITY
	move EFFECT_PRIORITY_HIT,       40, NORMAL,        100, 30,   0, PHYSICAL      ;QUICK_ATTACK
	move EFFECT_RAGE,               20, NORMAL,        100, 20,   0, PHYSICAL      ;RAGE
	move EFFECT_TELEPORT,            0, PSYCHIC_TYPE,  100, 20,   0, STATUS        ;TELEPORT
	move EFFECT_LEVEL_DAMAGE,        1, GHOST,         100, 15,   0, SPECIAL       ;NIGHT_SHADE
	move EFFECT_MIMIC,               0, NORMAL,        100, 10,   0, STATUS        ;MIMIC
	move EFFECT_DEFENSE_DOWN_2,      0, NORMAL,         85, 40,   0, STATUS        ;SCREECH
	move EFFECT_EVASION_UP,          0, NORMAL,        100, 15,   0, STATUS        ;DOUBLE_TEAM
	move EFFECT_HEAL,                0, NORMAL,        100, 20,   0, STATUS        ;RECOVER
	move EFFECT_DEFENSE_UP,          0, NORMAL,        100, 30,   0, STATUS        ;HARDEN
	move EFFECT_EVASION_UP,          0, NORMAL,        100, 20,   0, STATUS        ;MINIMIZE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,        100, 20,   0, STATUS        ;SMOKESCREEN
	move EFFECT_CONFUSE,             0, GHOST,         100, 10,   0, STATUS        ;CONFUSE_RAY
	move EFFECT_DEFENSE_UP,          0, WATER,         100, 40,   0, STATUS        ;WITHDRAW
	move EFFECT_DEFENSE_CURL,        0, NORMAL,        100, 40,   0, STATUS        ;DEFENSE_CURL
	move EFFECT_DEFENSE_UP_2,        0, PSYCHIC_TYPE,  100, 30,   0, STATUS        ;BARRIER
	move EFFECT_LIGHT_SCREEN,        0, PSYCHIC_TYPE,  100, 30,   0, STATUS        ;LIGHT_SCREEN
	move EFFECT_RESET_STATS,         0, ICE,           100, 30,   0, STATUS        ;HAZE
	move EFFECT_REFLECT,             0, PSYCHIC_TYPE,  100, 20,   0, STATUS        ;REFLECT
	move EFFECT_FOCUS_ENERGY,        0, NORMAL,        100, 30,   0, STATUS        ;FOCUS_ENERGY
	move EFFECT_BIDE,                0, NORMAL,        100, 10,   0, PHYSICAL      ;BIDE
	move EFFECT_METRONOME,           0, NORMAL,        100, 10,   0, STATUS        ;METRONOME
	move EFFECT_MIRROR_MOVE,         0, FLYING,        100, 20,   0, STATUS        ;MIRROR_MOVE
	move EFFECT_SELFDESTRUCT,      200, NORMAL,        100,  5,   0, PHYSICAL      ;SELFDESTRUCT
	move EFFECT_NORMAL_HIT,        100, NORMAL,         75, 10,   0, PHYSICAL      ;EGG_BOMB
	move EFFECT_PARALYZE_HIT,       20, GHOST,         100, 30,  30, PHYSICAL      ;LICK
	move EFFECT_POISON_HIT,         20, POISON,         70, 20,  40, SPECIAL       ;SMOG
	move EFFECT_POISON_HIT,         65, POISON,        100, 20,  30, SPECIAL       ;SLUDGE
	move EFFECT_FLINCH_HIT,         65, GROUND,         85, 20,  10, PHYSICAL      ;BONE_CLUB
	move EFFECT_BURN_HIT,          120, FIRE,           85,  5,  10, SPECIAL       ;FIRE_BLAST
	move EFFECT_NORMAL_HIT,         80, WATER,         100, 15,   0, PHYSICAL      ;WATERFALL
	move EFFECT_TRAP_TARGET,        35, WATER,          75, 10,   0, PHYSICAL      ;CLAMP
	move EFFECT_ALWAYS_HIT,         60, NORMAL,        100, 20,   0, SPECIAL       ;SWIFT
	move EFFECT_SKULL_BASH,        100, NORMAL,        100, 15,   0, PHYSICAL      ;SKULL_BASH
	move EFFECT_MULTI_HIT,          20, NORMAL,        100, 15,   0, PHYSICAL      ;SPIKE_CANNON
	move EFFECT_SPEED_DOWN_HIT,     10, NORMAL,        100, 35,  10, PHYSICAL      ;CONSTRICT
	move EFFECT_SP_DEF_UP_2,         0, PSYCHIC_TYPE,  100, 20,   0, STATUS        ;AMNESIA
	move EFFECT_ACCURACY_DOWN,       0, PSYCHIC_TYPE,   80, 15,   0, STATUS        ;KINESIS
	move EFFECT_HEAL,                0, NORMAL,        100, 10,   0, STATUS        ;SOFTBOILED
	move EFFECT_JUMP_KICK,          85, FIGHTING,       90, 20,   0, PHYSICAL      ;HI_JUMP_KICK
	move EFFECT_PARALYZE,            0, NORMAL,         75, 30,   0, STATUS        ;GLARE
	move EFFECT_DREAM_EATER,       100, PSYCHIC_TYPE,  100, 15,   0, SPECIAL       ;DREAM_EATER
	move EFFECT_POISON,              0, POISON,         55, 40,   0, STATUS        ;POISON_GAS
	move EFFECT_MULTI_HIT,          15, NORMAL,         85, 20,   0, PHYSICAL      ;BARRAGE
	move EFFECT_LEECH_HIT,          20, BUG,           100, 15,   0, PHYSICAL      ;LEECH_LIFE
	move EFFECT_SLEEP,               0, NORMAL,         75, 10,   0, STATUS        ;LOVELY_KISS
	move EFFECT_SKY_ATTACK,        140, FLYING,         90,  5,   0, PHYSICAL      ;SKY_ATTACK
	move EFFECT_TRANSFORM,           0, NORMAL,        100, 10,   0, STATUS        ;TRANSFORM
	move EFFECT_SPEED_DOWN_HIT,     20, WATER,         100, 30,  10, SPECIAL       ;BUBBLE
	move EFFECT_CONFUSE_HIT,        70, NORMAL,        100, 10,  20, PHYSICAL      ;DIZZY_PUNCH
	move EFFECT_SLEEP,               0, GRASS,         100, 15,   0, STATUS        ;SPORE
	move EFFECT_ACCURACY_DOWN,       0, NORMAL,         70, 20,   0, STATUS        ;FLASH
	move EFFECT_PSYWAVE,             1, PSYCHIC_TYPE,   80, 15,   0, SPECIAL       ;PSYWAVE
	move EFFECT_SPLASH,              0, NORMAL,        100, 40,   0, STATUS        ;SPLASH
	move EFFECT_DEFENSE_UP_2,        0, POISON,        100, 40,   0, STATUS        ;ACID_ARMOR
	move EFFECT_NORMAL_HIT,         90, WATER,          85, 10,   0, PHYSICAL      ;CRABHAMMER
	move EFFECT_SELFDESTRUCT,      250, NORMAL,        100,  5,   0, PHYSICAL      ;EXPLOSION
	move EFFECT_MULTI_HIT,          18, NORMAL,         80, 15,   0, PHYSICAL      ;FURY_SWIPES
	move EFFECT_DOUBLE_HIT,         50, GROUND,         90, 10,   0, PHYSICAL      ;BONEMERANG
	move EFFECT_HEAL,                0, PSYCHIC_TYPE,  100, 10,   0, STATUS        ;REST
	move EFFECT_FLINCH_HIT,         75, ROCK,           90, 10,  30, PHYSICAL      ;ROCK_SLIDE
	move EFFECT_FLINCH_HIT,         80, NORMAL,         90, 15,  10, PHYSICAL      ;HYPER_FANG
	move EFFECT_ATTACK_UP,           0, NORMAL,        100, 30,   0, STATUS        ;SHARPEN
	move EFFECT_CONVERSION,          0, NORMAL,        100, 30,   0, STATUS        ;CONVERSION
	move EFFECT_TRI_ATTACK,         80, NORMAL,        100, 10,  20, SPECIAL       ;TRI_ATTACK
	move EFFECT_SUPER_FANG,          1, NORMAL,         90, 10,   0, PHYSICAL      ;SUPER_FANG
	move EFFECT_NORMAL_HIT,         70, NORMAL,        100, 20,   0, PHYSICAL      ;SLASH
	move EFFECT_SUBSTITUTE,          0, NORMAL,        100, 10,   0, STATUS        ;SUBSTITUTE
	move EFFECT_RECOIL_HIT,         50, NORMAL,        100,  1,   0, PHYSICAL      ;STRUGGLE
.IndirectEnd::


SECTION "Moves Gen 2", ROMX

MovesGen2:
	move EFFECT_SKETCH,              0, NORMAL,        100,  1,   0, STATUS         ;SKETCH
	move EFFECT_TRIPLE_KICK,        10, FIGHTING,       90, 10,   0, PHYSICAL       ;TRIPLE_KICK
	move EFFECT_THIEF,              40, DARK,          100, 10, 100, PHYSICAL       ;THIEF
	move EFFECT_MEAN_LOOK,           0, BUG,           100, 10,   0, STATUS         ;SPIDER_WEB
	move EFFECT_LOCK_ON,             0, NORMAL,        100,  5,   0, STATUS         ;MIND_READER
	move EFFECT_NIGHTMARE,           0, GHOST,         100, 15,   0, STATUS         ;NIGHTMARE
	move EFFECT_FLAME_WHEEL,        60, FIRE,          100, 25,  10, PHYSICAL       ;FLAME_WHEEL
	move EFFECT_SNORE,              40, NORMAL,        100, 15,  30, SPECIAL        ;SNORE
	move EFFECT_CURSE,               0, CURSE_TYPE,    100, 10,   0, STATUS         ;CURSE
	move EFFECT_REVERSAL,            1, NORMAL,        100, 15,   0, PHYSICAL       ;FLAIL
	move EFFECT_CONVERSION2,         0, NORMAL,        100, 30,   0, STATUS         ;CONVERSION2
	move EFFECT_NORMAL_HIT,        100, FLYING,         95,  5,   0, SPECIAL        ;AEROBLAST
	move EFFECT_SPEED_DOWN_2,        0, GRASS,          85, 40,   0, STATUS         ;COTTON_SPORE
	move EFFECT_REVERSAL,            1, FIGHTING,      100, 15,   0, PHYSICAL       ;REVERSAL
	move EFFECT_SPITE,               0, GHOST,         100, 10,   0, STATUS         ;SPITE
	move EFFECT_FREEZE_HIT,         40, ICE,           100, 25,  10, SPECIAL        ;POWDER_SNOW
	move EFFECT_PROTECT,             0, NORMAL,        100, 10,   0, STATUS         ;PROTECT
	move EFFECT_PRIORITY_HIT,       40, FIGHTING,      100, 30,   0, PHYSICAL       ;MACH_PUNCH
	move EFFECT_SPEED_DOWN_2,        0, NORMAL,         90, 10,   0, STATUS         ;SCARY_FACE
	move EFFECT_ALWAYS_HIT,         60, DARK,          100, 20,   0, PHYSICAL       ;FAINT_ATTACK
	move EFFECT_CONFUSE,             0, FAIRY,          75, 10,   0, STATUS         ;SWEET_KISS
	move EFFECT_BELLY_DRUM,          0, NORMAL,        100, 10,   0, STATUS         ;BELLY_DRUM
	move EFFECT_POISON_HIT,         90, POISON,        100, 10,  30, SPECIAL        ;SLUDGE_BOMB
	move EFFECT_ACCURACY_DOWN_HIT,  20, GROUND,        100, 10, 100, SPECIAL        ;MUD_SLAP
	move EFFECT_ACCURACY_DOWN_HIT,  65, WATER,          85, 10,  50, SPECIAL        ;OCTAZOOKA
	move EFFECT_SPIKES,              0, GROUND,        100, 20,   0, STATUS         ;SPIKES
	move EFFECT_PARALYZE_HIT,      100, ELECTRIC,       50,  5, 100, SPECIAL        ;ZAP_CANNON
	move EFFECT_FORESIGHT,           0, NORMAL,        100, 40,   0, STATUS         ;FORESIGHT
	move EFFECT_DESTINY_BOND,        0, GHOST,         100,  5,   0, STATUS         ;DESTINY_BOND
	move EFFECT_PERISH_SONG,         0, NORMAL,        100,  5,   0, STATUS         ;PERISH_SONG
	move EFFECT_SPEED_DOWN_HIT,     55, ICE,            95, 15, 100, SPECIAL        ;ICY_WIND
	move EFFECT_PROTECT,             0, FIGHTING,      100,  5,   0, STATUS         ;DETECT
	move EFFECT_MULTI_HIT,          25, GROUND,         80, 10,   0, PHYSICAL       ;BONE_RUSH
	move EFFECT_LOCK_ON,             0, NORMAL,        100,  5,   0, STATUS         ;LOCK_ON
	move EFFECT_RAMPAGE,            90, DRAGON,        100, 15,   0, PHYSICAL       ;OUTRAGE
	move EFFECT_SANDSTORM,           0, ROCK,          100, 10,   0, STATUS         ;SANDSTORM
	move EFFECT_LEECH_HIT,          60, GRASS,         100,  5,   0, SPECIAL        ;GIGA_DRAIN
	move EFFECT_ENDURE,              0, NORMAL,        100, 10,   0, STATUS         ;ENDURE
	move EFFECT_ATTACK_DOWN_2,       0, FAIRY,         100, 20,   0, STATUS         ;CHARM
	move EFFECT_ROLLOUT,            30, ROCK,           90, 20,   0, PHYSICAL       ;ROLLOUT
	move EFFECT_FALSE_SWIPE,        40, NORMAL,        100, 40,   0, PHYSICAL       ;FALSE_SWIPE
	move EFFECT_SWAGGER,             0, NORMAL,         90, 15, 100, STATUS         ;SWAGGER
	move EFFECT_HEAL,                0, NORMAL,        100, 10,   0, STATUS         ;MILK_DRINK
	move EFFECT_PARALYZE_HIT,       65, ELECTRIC,      100, 20,  30, PHYSICAL       ;SPARK
	move EFFECT_FURY_CUTTER,        10, BUG,            95, 20,   0, PHYSICAL       ;FURY_CUTTER
	move EFFECT_DEFENSE_UP_HIT,     70, STEEL,          90, 25,  10, PHYSICAL       ;STEEL_WING
	move EFFECT_MEAN_LOOK,           0, NORMAL,        100,  5,   0, STATUS         ;MEAN_LOOK
	move EFFECT_ATTRACT,             0, NORMAL,        100, 15,   0, STATUS         ;ATTRACT
	move EFFECT_SLEEP_TALK,          0, NORMAL,        100, 10,   0, STATUS         ;SLEEP_TALK
	move EFFECT_HEAL_BELL,           0, NORMAL,        100,  5,   0, STATUS         ;HEAL_BELL
	move EFFECT_RETURN,              1, NORMAL,        100, 20,   0, PHYSICAL       ;RETURN
	move EFFECT_PRESENT,             1, NORMAL,         90, 15,   0, PHYSICAL       ;PRESENT
	move EFFECT_FRUSTRATION,         1, NORMAL,        100, 20,   0, PHYSICAL       ;FRUSTRATION
	move EFFECT_SAFEGUARD,           0, NORMAL,        100, 25,   0, STATUS         ;SAFEGUARD
	move EFFECT_PAIN_SPLIT,          0, NORMAL,        100, 20,   0, STATUS         ;PAIN_SPLIT
	move EFFECT_SACRED_FIRE,       100, FIRE,           95,  5,  50, PHYSICAL       ;SACRED_FIRE
	move EFFECT_MAGNITUDE,           1, GROUND,        100, 30,   0, PHYSICAL       ;MAGNITUDE
	move EFFECT_CONFUSE_HIT,       100, FIGHTING,       50,  5, 100, PHYSICAL       ;DYNAMICPUNCH
	move EFFECT_NORMAL_HIT,        120, BUG,            85, 10,   0, PHYSICAL       ;MEGAHORN
	move EFFECT_PARALYZE_HIT,       60, DRAGON,        100, 20,  30, SPECIAL        ;DRAGONBREATH
	move EFFECT_BATON_PASS,          0, NORMAL,        100, 40,   0, STATUS         ;BATON_PASS
	move EFFECT_ENCORE,              0, NORMAL,        100,  5,   0, STATUS         ;ENCORE
	move EFFECT_PURSUIT,            40, DARK,          100, 20,   0, PHYSICAL       ;PURSUIT
	move EFFECT_RAPID_SPIN,         20, NORMAL,        100, 40,   0, PHYSICAL       ;RAPID_SPIN
	move EFFECT_EVASION_DOWN,        0, NORMAL,        100, 20,   0, STATUS         ;SWEET_SCENT
	move EFFECT_DEFENSE_DOWN_HIT,  100, STEEL,          75, 15,  30, PHYSICAL       ;IRON_TAIL
	move EFFECT_ATTACK_UP_HIT,      50, STEEL,          95, 35,  10, PHYSICAL       ;METAL_CLAW
	move EFFECT_ALWAYS_HIT,         70, FIGHTING,      100, 10,   0, PHYSICAL       ;VITAL_THROW
	move EFFECT_MORNING_SUN,         0, NORMAL,        100,  5,   0, STATUS         ;MORNING_SUN
	move EFFECT_SYNTHESIS,           0, GRASS,         100,  5,   0, STATUS         ;SYNTHESIS
	move EFFECT_MOONLIGHT,           0, FAIRY,         100,  5,   0, STATUS         ;MOONLIGHT
	move EFFECT_HIDDEN_POWER,        1, NORMAL,        100, 15,   0, SPECIAL        ;HIDDEN_POWER
	move EFFECT_NORMAL_HIT,        100, FIGHTING,       80,  5,   0, PHYSICAL       ;CROSS_CHOP
	move EFFECT_TWISTER,            40, DRAGON,        100, 20,  20, SPECIAL        ;TWISTER
	move EFFECT_RAIN_DANCE,          0, WATER,          90,  5,   0, STATUS         ;RAIN_DANCE
	move EFFECT_SUNNY_DAY,           0, FIRE,           90,  5,   0, STATUS         ;SUNNY_DAY
	move EFFECT_SP_DEF_DOWN_HIT,    80, DARK,          100, 15,  20, PHYSICAL       ;CRUNCH
	move EFFECT_MIRROR_COAT,         1, PSYCHIC_TYPE,  100, 20,   0, SPECIAL        ;MIRROR_COAT
	move EFFECT_PSYCH_UP,            0, NORMAL,        100, 10,   0, STATUS         ;PSYCH_UP
	move EFFECT_PRIORITY_HIT,       80, NORMAL,        100,  5,   0, PHYSICAL       ;EXTREMESPEED
	move EFFECT_ALL_UP_HIT,         60, ROCK,          100,  5,  10, SPECIAL        ;ANCIENTPOWER
	move EFFECT_SP_DEF_DOWN_HIT,    80, GHOST,         100, 15,  20, SPECIAL        ;SHADOW_BALL
	move EFFECT_FUTURE_SIGHT,       80, PSYCHIC_TYPE,   90, 15,   0, SPECIAL        ;FUTURE_SIGHT
	move EFFECT_DEFENSE_DOWN_HIT,   20, FIGHTING,      100, 15,  50, PHYSICAL       ;ROCK_SMASH
	move EFFECT_TRAP_TARGET,        15, WATER,          70, 15,   0, SPECIAL        ;WHIRLPOOL
	move EFFECT_BEAT_UP,            10, DARK,          100, 10,   0, PHYSICAL       ;BEAT_UP
.IndirectEnd::

POPS
