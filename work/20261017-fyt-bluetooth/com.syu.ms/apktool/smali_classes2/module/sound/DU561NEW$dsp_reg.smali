.class public final enum Lmodule/sound/DU561NEW$dsp_reg;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/DU561NEW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "dsp_reg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/DU561NEW$dsp_reg;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum B:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum C:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum D:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum E:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum F:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum G:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum H:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum I:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum J:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum K:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum L:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum M:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum N:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum O:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum P:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum Q:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum R:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum S:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum T:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final synthetic U:[Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum b:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum c:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum d:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum e:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum f:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum g:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum h:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum i:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum j:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum k:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum l:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum m:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum n:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum o:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum p:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum q:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum r:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum s:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum t:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum u:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum v:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum w:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum x:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum y:Lmodule/sound/DU561NEW$dsp_reg;

.field public static final enum z:Lmodule/sound/DU561NEW$dsp_reg;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control0_ADDR"

    const/4 v2, 0x0

    const/16 v3, 0x81

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->b:Lmodule/sound/DU561NEW$dsp_reg;

    .line 2
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control5_ADDR"

    const/4 v2, 0x1

    const/16 v3, 0x82

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->c:Lmodule/sound/DU561NEW$dsp_reg;

    .line 3
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_noise_suppressor_expander0_ADDR"

    const/4 v2, 0x2

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->d:Lmodule/sound/DU561NEW$dsp_reg;

    .line 4
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control1_ADDR"

    const/4 v2, 0x3

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->e:Lmodule/sound/DU561NEW$dsp_reg;

    .line 5
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_vocal_cut0_ADDR"

    const/4 v2, 0x4

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->f:Lmodule/sound/DU561NEW$dsp_reg;

    .line 6
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_harmonic_exciter0_ADDR"

    const/4 v2, 0x5

    const/16 v3, 0x86

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->g:Lmodule/sound/DU561NEW$dsp_reg;

    .line 7
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_three_d0_ADDR"

    const/4 v2, 0x6

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->h:Lmodule/sound/DU561NEW$dsp_reg;

    .line 8
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_stereo_widener0_ADDR"

    const/4 v2, 0x7

    const/16 v3, 0x88

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->i:Lmodule/sound/DU561NEW$dsp_reg;

    .line 9
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq0_ADDR"

    const/16 v2, 0x8

    const/16 v3, 0x89

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->j:Lmodule/sound/DU561NEW$dsp_reg;

    .line 10
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq4_ADDR"

    const/16 v2, 0x9

    const/16 v3, 0x8a

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->k:Lmodule/sound/DU561NEW$dsp_reg;

    .line 11
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq5_ADDR"

    const/16 v2, 0xa

    const/16 v3, 0x8b

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->l:Lmodule/sound/DU561NEW$dsp_reg;

    .line 12
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq6_ADDR"

    const/16 v2, 0xb

    const/16 v3, 0x8c

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->m:Lmodule/sound/DU561NEW$dsp_reg;

    .line 13
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_route_selector0_ADDR"

    const/16 v2, 0xc

    const/16 v3, 0x8d

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->n:Lmodule/sound/DU561NEW$dsp_reg;

    .line 14
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control4_ADDR"

    const/16 v2, 0xd

    const/16 v3, 0x8e

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->o:Lmodule/sound/DU561NEW$dsp_reg;

    .line 15
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_selector0_ADDR"

    const/16 v2, 0xe

    const/16 v3, 0x8f

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->p:Lmodule/sound/DU561NEW$dsp_reg;

    .line 16
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_selector1_ADDR"

    const/16 v2, 0xf

    const/16 v3, 0x90

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->q:Lmodule/sound/DU561NEW$dsp_reg;

    .line 17
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq1_ADDR"

    const/16 v2, 0x10

    const/16 v3, 0x91

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->r:Lmodule/sound/DU561NEW$dsp_reg;

    .line 18
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_selector2_ADDR"

    const/16 v2, 0x11

    const/16 v3, 0x92

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->s:Lmodule/sound/DU561NEW$dsp_reg;

    .line 19
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control6_ADDR"

    const/16 v2, 0x12

    const/16 v3, 0x93

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->t:Lmodule/sound/DU561NEW$dsp_reg;

    .line 20
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_pcm_delay0_ADDR"

    const/16 v2, 0x13

    const/16 v3, 0x94

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->u:Lmodule/sound/DU561NEW$dsp_reg;

    .line 21
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_phase_inverter0_ADDR"

    const/16 v2, 0x14

    const/16 v3, 0x95

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->v:Lmodule/sound/DU561NEW$dsp_reg;

    .line 22
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_combiner1_ADDR"

    const/16 v2, 0x15

    const/16 v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->w:Lmodule/sound/DU561NEW$dsp_reg;

    .line 23
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq2_ADDR"

    const/16 v2, 0x16

    const/16 v3, 0x97

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->x:Lmodule/sound/DU561NEW$dsp_reg;

    .line 24
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_selector4_ADDR"

    const/16 v2, 0x17

    const/16 v3, 0x98

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->y:Lmodule/sound/DU561NEW$dsp_reg;

    .line 25
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control8_ADDR"

    const/16 v2, 0x18

    const/16 v3, 0x99

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->z:Lmodule/sound/DU561NEW$dsp_reg;

    .line 26
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_pcm_delay2_ADDR"

    const/16 v2, 0x19

    const/16 v3, 0x9a

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->A:Lmodule/sound/DU561NEW$dsp_reg;

    .line 27
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_phase_inverter2_ADDR"

    const/16 v2, 0x1a

    const/16 v3, 0x9b

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->B:Lmodule/sound/DU561NEW$dsp_reg;

    .line 28
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_combiner2_ADDR"

    const/16 v2, 0x1b

    const/16 v3, 0x9c

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->C:Lmodule/sound/DU561NEW$dsp_reg;

    .line 29
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_downmix_2to1_0_ADDR"

    const/16 v2, 0x1c

    const/16 v3, 0x9d

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->D:Lmodule/sound/DU561NEW$dsp_reg;

    .line 30
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_eq3_ADDR"

    const/16 v2, 0x1d

    const/16 v3, 0x9e

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->E:Lmodule/sound/DU561NEW$dsp_reg;

    .line 31
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control10_ADDR"

    const/16 v2, 0x1e

    const/16 v3, 0x9f

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->F:Lmodule/sound/DU561NEW$dsp_reg;

    .line 32
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_pcm_delay4_ADDR"

    const/16 v2, 0x1f

    const/16 v3, 0xa0

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->G:Lmodule/sound/DU561NEW$dsp_reg;

    .line 33
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_phase_inverter4_ADDR"

    const/16 v2, 0x20

    const/16 v3, 0xa1

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->H:Lmodule/sound/DU561NEW$dsp_reg;

    .line 34
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_selector5_ADDR"

    const/16 v2, 0x21

    const/16 v3, 0xa2

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->I:Lmodule/sound/DU561NEW$dsp_reg;

    .line 35
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control9_ADDR"

    const/16 v2, 0x22

    const/16 v3, 0xa3

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->J:Lmodule/sound/DU561NEW$dsp_reg;

    .line 36
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_pcm_delay3_ADDR"

    const/16 v2, 0x23

    const/16 v3, 0xa4

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->K:Lmodule/sound/DU561NEW$dsp_reg;

    .line 37
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_phase_inverter3_ADDR"

    const/16 v2, 0x24

    const/16 v3, 0xa5

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->L:Lmodule/sound/DU561NEW$dsp_reg;

    .line 38
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_channel_selector3_ADDR"

    const/16 v2, 0x25

    const/16 v3, 0xa6

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->M:Lmodule/sound/DU561NEW$dsp_reg;

    .line 39
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control7_ADDR"

    const/16 v2, 0x26

    const/16 v3, 0xa7

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->N:Lmodule/sound/DU561NEW$dsp_reg;

    .line 40
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_pcm_delay1_ADDR"

    const/16 v2, 0x27

    const/16 v3, 0xa8

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->O:Lmodule/sound/DU561NEW$dsp_reg;

    .line 41
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_phase_inverter1_ADDR"

    const/16 v2, 0x28

    const/16 v3, 0xa9

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->P:Lmodule/sound/DU561NEW$dsp_reg;

    .line 42
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control2_ADDR"

    const/16 v2, 0x29

    const/16 v3, 0xaa

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->Q:Lmodule/sound/DU561NEW$dsp_reg;

    .line 43
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control3_ADDR"

    const/16 v2, 0x2a

    const/16 v3, 0xab

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->R:Lmodule/sound/DU561NEW$dsp_reg;

    .line 44
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_gain_control11_ADDR"

    const/16 v2, 0x2b

    const/16 v3, 0xac

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->S:Lmodule/sound/DU561NEW$dsp_reg;

    .line 45
    new-instance v0, Lmodule/sound/DU561NEW$dsp_reg;

    const-string v1, "DEMO_COUNT_ADDR"

    const/16 v2, 0x2c

    const/16 v3, 0xad

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/DU561NEW$dsp_reg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->T:Lmodule/sound/DU561NEW$dsp_reg;

    .line 46
    invoke-static {}, Lmodule/sound/DU561NEW$dsp_reg;->a()[Lmodule/sound/DU561NEW$dsp_reg;

    move-result-object v0

    sput-object v0, Lmodule/sound/DU561NEW$dsp_reg;->U:[Lmodule/sound/DU561NEW$dsp_reg;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lmodule/sound/DU561NEW$dsp_reg;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/DU561NEW$dsp_reg;
    .locals 3

    const/16 v0, 0x2d

    new-array v0, v0, [Lmodule/sound/DU561NEW$dsp_reg;

    .line 1
    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->b:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->c:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->d:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->e:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->f:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->g:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->h:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->i:Lmodule/sound/DU561NEW$dsp_reg;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->j:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->k:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->l:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->m:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->n:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->o:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->p:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->q:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->r:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->s:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->t:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->u:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->v:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->w:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->x:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->y:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->z:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->A:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->B:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->C:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->D:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->E:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->F:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->G:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->H:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->I:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->J:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->K:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->L:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->M:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->N:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->O:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->P:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->Q:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->R:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->S:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/DU561NEW$dsp_reg;->T:Lmodule/sound/DU561NEW$dsp_reg;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/DU561NEW$dsp_reg;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/DU561NEW$dsp_reg;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/DU561NEW$dsp_reg;

    return-object p0
.end method

.method public static values()[Lmodule/sound/DU561NEW$dsp_reg;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/DU561NEW$dsp_reg;->U:[Lmodule/sound/DU561NEW$dsp_reg;

    invoke-virtual {v0}, [Lmodule/sound/DU561NEW$dsp_reg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/DU561NEW$dsp_reg;

    return-object v0
.end method
