.class final enum Lmodule/sound/C32107$REG;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C32107;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REG"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmodule/sound/C32107$REG;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lmodule/sound/C32107$REG;

.field public static final enum B:Lmodule/sound/C32107$REG;

.field public static final enum C:Lmodule/sound/C32107$REG;

.field public static final enum D:Lmodule/sound/C32107$REG;

.field public static final enum E:Lmodule/sound/C32107$REG;

.field public static final enum F:Lmodule/sound/C32107$REG;

.field public static final enum G:Lmodule/sound/C32107$REG;

.field public static final enum H:Lmodule/sound/C32107$REG;

.field public static final enum I:Lmodule/sound/C32107$REG;

.field public static final enum J:Lmodule/sound/C32107$REG;

.field public static final enum K:Lmodule/sound/C32107$REG;

.field public static final enum L:Lmodule/sound/C32107$REG;

.field public static final enum M:Lmodule/sound/C32107$REG;

.field public static final enum N:Lmodule/sound/C32107$REG;

.field public static final enum O:Lmodule/sound/C32107$REG;

.field public static final enum P:Lmodule/sound/C32107$REG;

.field public static final enum Q:Lmodule/sound/C32107$REG;

.field public static final enum R:Lmodule/sound/C32107$REG;

.field public static final enum S:Lmodule/sound/C32107$REG;

.field public static final enum T:Lmodule/sound/C32107$REG;

.field public static final enum U:Lmodule/sound/C32107$REG;

.field public static final enum V:Lmodule/sound/C32107$REG;

.field public static final enum W:Lmodule/sound/C32107$REG;

.field public static final enum X:Lmodule/sound/C32107$REG;

.field public static final enum Y:Lmodule/sound/C32107$REG;

.field public static final enum Z:Lmodule/sound/C32107$REG;

.field public static final enum a0:Lmodule/sound/C32107$REG;

.field public static final enum b:Lmodule/sound/C32107$REG;

.field public static final enum b0:Lmodule/sound/C32107$REG;

.field public static final enum c:Lmodule/sound/C32107$REG;

.field public static final enum c0:Lmodule/sound/C32107$REG;

.field public static final enum d:Lmodule/sound/C32107$REG;

.field public static final enum d0:Lmodule/sound/C32107$REG;

.field public static final enum e:Lmodule/sound/C32107$REG;

.field public static final enum e0:Lmodule/sound/C32107$REG;

.field public static final enum f:Lmodule/sound/C32107$REG;

.field public static final enum f0:Lmodule/sound/C32107$REG;

.field public static final enum g:Lmodule/sound/C32107$REG;

.field public static final synthetic g0:[Lmodule/sound/C32107$REG;

.field public static final enum h:Lmodule/sound/C32107$REG;

.field public static final enum i:Lmodule/sound/C32107$REG;

.field public static final enum j:Lmodule/sound/C32107$REG;

.field public static final enum k:Lmodule/sound/C32107$REG;

.field public static final enum l:Lmodule/sound/C32107$REG;

.field public static final enum m:Lmodule/sound/C32107$REG;

.field public static final enum n:Lmodule/sound/C32107$REG;

.field public static final enum o:Lmodule/sound/C32107$REG;

.field public static final enum p:Lmodule/sound/C32107$REG;

.field public static final enum q:Lmodule/sound/C32107$REG;

.field public static final enum r:Lmodule/sound/C32107$REG;

.field public static final enum s:Lmodule/sound/C32107$REG;

.field public static final enum t:Lmodule/sound/C32107$REG;

.field public static final enum u:Lmodule/sound/C32107$REG;

.field public static final enum v:Lmodule/sound/C32107$REG;

.field public static final enum w:Lmodule/sound/C32107$REG;

.field public static final enum x:Lmodule/sound/C32107$REG;

.field public static final enum y:Lmodule/sound/C32107$REG;

.field public static final enum z:Lmodule/sound/C32107$REG;


# instance fields
.field public a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SLAVE"

    const/4 v2, 0x0

    const/16 v3, 0x80

    invoke-direct {v0, v1, v2, v3}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->b:Lmodule/sound/C32107$REG;

    .line 2
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SPECTRUM"

    const/4 v3, 0x1

    const v4, 0xa000

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->c:Lmodule/sound/C32107$REG;

    .line 3
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "RESET"

    const/4 v4, 0x2

    const v5, 0xfefe

    invoke-direct {v0, v1, v4, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->d:Lmodule/sound/C32107$REG;

    .line 4
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SETUP1"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->e:Lmodule/sound/C32107$REG;

    .line 5
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SETUP"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    .line 6
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SB"

    const/4 v3, 0x5

    const/16 v4, 0x101

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->g:Lmodule/sound/C32107$REG;

    .line 7
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "CHANNEL"

    const/4 v3, 0x6

    const/16 v4, 0x103

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->h:Lmodule/sound/C32107$REG;

    .line 8
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "MIXON"

    const/4 v3, 0x7

    const/16 v4, 0x109

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->i:Lmodule/sound/C32107$REG;

    .line 9
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "MIXVOL"

    const/16 v3, 0x8

    const/16 v4, 0x905

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->j:Lmodule/sound/C32107$REG;

    .line 10
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "IISINPOUT"

    const/16 v3, 0x9

    const/16 v5, 0x202

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->k:Lmodule/sound/C32107$REG;

    .line 11
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "DSP1"

    const/16 v3, 0xa

    const/16 v5, 0x203

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->l:Lmodule/sound/C32107$REG;

    .line 12
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "DSP3"

    const/16 v3, 0xb

    const/16 v5, 0x205

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->m:Lmodule/sound/C32107$REG;

    .line 13
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "DSP4"

    const/16 v3, 0xc

    const/16 v5, 0x206

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->n:Lmodule/sound/C32107$REG;

    .line 14
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "DSP5"

    const/16 v3, 0xd

    const/16 v5, 0x207

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->o:Lmodule/sound/C32107$REG;

    .line 15
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_FL"

    const/16 v3, 0xe

    const/16 v5, 0x400

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->p:Lmodule/sound/C32107$REG;

    .line 16
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_FR"

    const/16 v3, 0xf

    const/16 v5, 0x402

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->q:Lmodule/sound/C32107$REG;

    .line 17
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_RL"

    const/16 v3, 0x10

    const/16 v5, 0x404

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->r:Lmodule/sound/C32107$REG;

    .line 18
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_RR"

    const/16 v3, 0x11

    const/16 v5, 0x406

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->s:Lmodule/sound/C32107$REG;

    .line 19
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_S"

    const/16 v3, 0x12

    const/16 v5, 0x408

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->t:Lmodule/sound/C32107$REG;

    .line 20
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_RL2"

    const/16 v3, 0x13

    const/16 v5, 0x40a

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->u:Lmodule/sound/C32107$REG;

    .line 21
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "TIME_ALIGNMENT_RR2"

    const/16 v3, 0x14

    const/16 v5, 0x40c

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->v:Lmodule/sound/C32107$REG;

    .line 22
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "EQ_FRONT_GAIN_BASE"

    const/16 v3, 0x15

    const/16 v5, 0x610

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->w:Lmodule/sound/C32107$REG;

    .line 23
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "EQ_REAR_GAIN_BASE"

    const/16 v3, 0x16

    const/16 v5, 0x620

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->x:Lmodule/sound/C32107$REG;

    .line 24
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "HPF_FRONT"

    const/16 v3, 0x17

    const/16 v5, 0x703

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->y:Lmodule/sound/C32107$REG;

    .line 25
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "HPF_REAR"

    const/16 v3, 0x18

    const/16 v5, 0x704

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->z:Lmodule/sound/C32107$REG;

    .line 26
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "P2B_FRONT"

    const/16 v3, 0x19

    const/16 v5, 0x705

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    .line 27
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "P2B_REAR"

    const/16 v3, 0x1a

    const/16 v5, 0x706

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    .line 28
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SUBLPF"

    const/16 v3, 0x1b

    const/16 v5, 0x707

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->C:Lmodule/sound/C32107$REG;

    .line 29
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SUBHPF"

    const/16 v3, 0x1c

    const/16 v5, 0x708

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->D:Lmodule/sound/C32107$REG;

    .line 30
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "IIR_DIRCOEF_SET"

    const/16 v3, 0x1d

    const/16 v5, 0x709

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->E:Lmodule/sound/C32107$REG;

    .line 31
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "BEEP_LEVEL"

    const/16 v3, 0x1e

    const/16 v5, 0x800

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->F:Lmodule/sound/C32107$REG;

    .line 32
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "BEEP_TYPE"

    const/16 v3, 0x1f

    const/16 v5, 0x801

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->G:Lmodule/sound/C32107$REG;

    .line 33
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "BEEP_SETUP"

    const/16 v3, 0x20

    const/16 v5, 0x803

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->H:Lmodule/sound/C32107$REG;

    .line 34
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_FL"

    const/16 v3, 0x21

    const/16 v5, 0x900

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->I:Lmodule/sound/C32107$REG;

    .line 35
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_FR"

    const/16 v3, 0x22

    const/16 v5, 0x901

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->J:Lmodule/sound/C32107$REG;

    .line 36
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_RL"

    const/16 v3, 0x23

    const/16 v5, 0x902

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->K:Lmodule/sound/C32107$REG;

    .line 37
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_RR"

    const/16 v3, 0x24

    const/16 v5, 0x903

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->L:Lmodule/sound/C32107$REG;

    .line 38
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_SL"

    const/16 v3, 0x25

    const/16 v5, 0x904

    invoke-direct {v0, v1, v3, v5}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->M:Lmodule/sound/C32107$REG;

    .line 39
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_SR"

    const/16 v3, 0x26

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->N:Lmodule/sound/C32107$REG;

    .line 40
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_FL_BOOST"

    const/16 v3, 0x27

    const/16 v4, 0x906

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->O:Lmodule/sound/C32107$REG;

    .line 41
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_FR_BOOST"

    const/16 v3, 0x28

    const/16 v4, 0x907

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->P:Lmodule/sound/C32107$REG;

    .line 42
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_RL_BOOST"

    const/16 v3, 0x29

    const/16 v4, 0x908

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->Q:Lmodule/sound/C32107$REG;

    .line 43
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_RR_BOOST"

    const/16 v3, 0x2a

    const/16 v4, 0x909

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->R:Lmodule/sound/C32107$REG;

    .line 44
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_SL_BOOST"

    const/16 v3, 0x2b

    const/16 v4, 0x90a

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->S:Lmodule/sound/C32107$REG;

    .line 45
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "VOL_SR_BOOST"

    const/16 v3, 0x2c

    const/16 v4, 0x90b

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->T:Lmodule/sound/C32107$REG;

    .line 46
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "FL"

    const/16 v3, 0x2d

    const/16 v4, 0xa00

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->U:Lmodule/sound/C32107$REG;

    .line 47
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "FR"

    const/16 v3, 0x2e

    const/16 v4, 0xa01

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->V:Lmodule/sound/C32107$REG;

    .line 48
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "RL"

    const/16 v3, 0x2f

    const/16 v4, 0xa02

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->W:Lmodule/sound/C32107$REG;

    .line 49
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "RR"

    const/16 v3, 0x30

    const/16 v4, 0xa03

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->X:Lmodule/sound/C32107$REG;

    .line 50
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SWL"

    const/16 v3, 0x31

    const/16 v4, 0xa04

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->Y:Lmodule/sound/C32107$REG;

    .line 51
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "SWR"

    const/16 v3, 0x32

    const/16 v4, 0xa05

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->Z:Lmodule/sound/C32107$REG;

    .line 52
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "EQCOEFSELECTOR"

    const/16 v3, 0x33

    const/16 v4, 0x1000

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->a0:Lmodule/sound/C32107$REG;

    .line 53
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "EQCOEF"

    const/16 v3, 0x34

    const/16 v4, 0x1001

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->b0:Lmodule/sound/C32107$REG;

    .line 54
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "IIRCOEFSELECTOR"

    const/16 v3, 0x35

    const/16 v4, 0x1100

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->c0:Lmodule/sound/C32107$REG;

    .line 55
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "IIRCOEF"

    const/16 v3, 0x36

    const/16 v4, 0x1101

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->d0:Lmodule/sound/C32107$REG;

    .line 56
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "READBACKH"

    const/16 v3, 0x37

    const/16 v4, 0xd0

    invoke-direct {v0, v1, v3, v4}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->e0:Lmodule/sound/C32107$REG;

    .line 57
    new-instance v0, Lmodule/sound/C32107$REG;

    const-string v1, "READBACKL"

    const/16 v3, 0x38

    invoke-direct {v0, v1, v3, v2}, Lmodule/sound/C32107$REG;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmodule/sound/C32107$REG;->f0:Lmodule/sound/C32107$REG;

    .line 58
    invoke-static {}, Lmodule/sound/C32107$REG;->a()[Lmodule/sound/C32107$REG;

    move-result-object v0

    sput-object v0, Lmodule/sound/C32107$REG;->g0:[Lmodule/sound/C32107$REG;

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
    iput p3, p0, Lmodule/sound/C32107$REG;->a:I

    return-void
.end method

.method public static synthetic a()[Lmodule/sound/C32107$REG;
    .locals 3

    const/16 v0, 0x39

    new-array v0, v0, [Lmodule/sound/C32107$REG;

    .line 1
    sget-object v1, Lmodule/sound/C32107$REG;->b:Lmodule/sound/C32107$REG;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->c:Lmodule/sound/C32107$REG;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->d:Lmodule/sound/C32107$REG;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->e:Lmodule/sound/C32107$REG;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->f:Lmodule/sound/C32107$REG;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->g:Lmodule/sound/C32107$REG;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->h:Lmodule/sound/C32107$REG;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->i:Lmodule/sound/C32107$REG;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->j:Lmodule/sound/C32107$REG;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->k:Lmodule/sound/C32107$REG;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->l:Lmodule/sound/C32107$REG;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->m:Lmodule/sound/C32107$REG;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->n:Lmodule/sound/C32107$REG;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->o:Lmodule/sound/C32107$REG;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->p:Lmodule/sound/C32107$REG;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->q:Lmodule/sound/C32107$REG;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->r:Lmodule/sound/C32107$REG;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->s:Lmodule/sound/C32107$REG;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->t:Lmodule/sound/C32107$REG;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->u:Lmodule/sound/C32107$REG;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->v:Lmodule/sound/C32107$REG;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->w:Lmodule/sound/C32107$REG;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->x:Lmodule/sound/C32107$REG;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->y:Lmodule/sound/C32107$REG;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->z:Lmodule/sound/C32107$REG;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->A:Lmodule/sound/C32107$REG;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->B:Lmodule/sound/C32107$REG;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->C:Lmodule/sound/C32107$REG;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->D:Lmodule/sound/C32107$REG;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->E:Lmodule/sound/C32107$REG;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->F:Lmodule/sound/C32107$REG;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->G:Lmodule/sound/C32107$REG;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->H:Lmodule/sound/C32107$REG;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->I:Lmodule/sound/C32107$REG;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->J:Lmodule/sound/C32107$REG;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->K:Lmodule/sound/C32107$REG;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->L:Lmodule/sound/C32107$REG;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->M:Lmodule/sound/C32107$REG;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->N:Lmodule/sound/C32107$REG;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->O:Lmodule/sound/C32107$REG;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->P:Lmodule/sound/C32107$REG;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->Q:Lmodule/sound/C32107$REG;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->R:Lmodule/sound/C32107$REG;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->S:Lmodule/sound/C32107$REG;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->T:Lmodule/sound/C32107$REG;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->U:Lmodule/sound/C32107$REG;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->V:Lmodule/sound/C32107$REG;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->W:Lmodule/sound/C32107$REG;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->X:Lmodule/sound/C32107$REG;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->Y:Lmodule/sound/C32107$REG;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->Z:Lmodule/sound/C32107$REG;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->a0:Lmodule/sound/C32107$REG;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->b0:Lmodule/sound/C32107$REG;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->c0:Lmodule/sound/C32107$REG;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->d0:Lmodule/sound/C32107$REG;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->e0:Lmodule/sound/C32107$REG;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lmodule/sound/C32107$REG;->f0:Lmodule/sound/C32107$REG;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lmodule/sound/C32107$REG;
    .locals 1

    .line 1
    const-class v0, Lmodule/sound/C32107$REG;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmodule/sound/C32107$REG;

    return-object p0
.end method

.method public static values()[Lmodule/sound/C32107$REG;
    .locals 1

    .line 1
    sget-object v0, Lmodule/sound/C32107$REG;->g0:[Lmodule/sound/C32107$REG;

    invoke-virtual {v0}, [Lmodule/sound/C32107$REG;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmodule/sound/C32107$REG;

    return-object v0
.end method
