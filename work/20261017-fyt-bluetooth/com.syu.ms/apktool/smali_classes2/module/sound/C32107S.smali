.class public Lmodule/sound/C32107S;
.super Lmodule/sound/AudioDevice;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodule/sound/C32107S$EQType;,
        Lmodule/sound/C32107S$REG;,
        Lmodule/sound/C32107S$HPF;,
        Lmodule/sound/C32107S$IIR;,
        Lmodule/sound/C32107S$REG_ADI;,
        Lmodule/sound/C32107S$CHANNEL;,
        Lmodule/sound/C32107S$P2BFreq;,
        Lmodule/sound/C32107S$P2BGain;
    }
.end annotation


# static fields
.field public static k2:I = 0x0

.field public static l2:I = 0x40

.field public static m2:I = 0x34

.field public static n2:I = 0x14

.field public static o2:I = 0xb

.field public static p2:I = 0x2

.field public static q2:[I


# instance fields
.field public final A1:[[I

.field public final B1:[[I

.field public final C1:[[I

.field public final D1:[[I

.field public final E1:[[I

.field public final F1:[I

.field public final G1:[I

.field public H1:Lmodule/sound/C32107S$EQType;

.field public final I0:Ljava/lang/String;

.field public I1:I

.field public final J0:I

.field public J1:Lo1/n;

.field public K0:[I

.field public K1:Z

.field public L0:[I

.field public L1:Z

.field public final M0:[I

.field public M1:Z

.field public N0:[I

.field public N1:[I

.field public O0:[I

.field public O1:[I

.field public P0:[I

.field public P1:[I

.field public Q0:[I

.field public Q1:[I

.field public R0:[I

.field public R1:I

.field public S0:[I

.field public S1:I

.field public final T0:[I

.field public T1:[I

.field public final U0:[I

.field public U1:[I

.field public final V0:[I

.field public V1:[I

.field public final W0:[I

.field public W1:I

.field public final X0:[I

.field public X1:I

.field public final Y0:[I

.field public Y1:Landroid/media/AudioManager;

.field public final Z0:[I

.field public Z1:I

.field public final a1:[I

.field public a2:Ljava/lang/Boolean;

.field public b1:[I

.field public b2:Ljava/lang/Integer;

.field public c1:[I

.field public c2:Z

.field public d1:[I

.field public d2:Z

.field public final e1:[I

.field public e2:Z

.field public final f1:[I

.field public f2:I

.field public final g1:[I

.field public g2:I

.field public final h1:[[I

.field public h2:Z

.field public final i1:[I

.field public i2:Z

.field public final j1:[I

.field public final j2:Ljava/lang/Runnable;

.field public final k1:[I

.field public final l1:[I

.field public final m1:[I

.field public final n1:[I

.field public final o1:[[I

.field public final p1:[[I

.field public final q1:[[I

.field public final r1:[[I

.field public final s1:[I

.field public final t1:[I

.field public final u1:[I

.field public final v1:[D

.field public final w1:[[I

.field public final x1:[[I

.field public final y1:[[I

.field public final z1:[[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x25

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lmodule/sound/C32107S;->q2:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1a
        0x19
        0x18
        0x17
        0x15
        0x14
        0x13
        0x12
        0x11
        0x10
        0xf
        0xe
        0xc
        0xb
        0xa
        0x9
        0x8
        0x7
        0x6
        0x5
        0x4
        0x3
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(IILo1/n;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    invoke-direct/range {p0 .. p2}, Lmodule/sound/AudioDevice;-><init>(II)V

    const-string v2, "C32107S"

    .line 2
    iput-object v2, v0, Lmodule/sound/C32107S;->I0:Ljava/lang/String;

    const/16 v2, 0x1c

    .line 3
    iput v2, v0, Lmodule/sound/C32107S;->J0:I

    const/16 v3, 0x104

    new-array v3, v3, [I

    .line 4
    fill-array-data v3, :array_0

    iput-object v3, v0, Lmodule/sound/C32107S;->K0:[I

    const/16 v3, 0x25

    new-array v4, v3, [I

    .line 5
    fill-array-data v4, :array_1

    iput-object v4, v0, Lmodule/sound/C32107S;->L0:[I

    new-array v4, v3, [I

    .line 6
    fill-array-data v4, :array_2

    iput-object v4, v0, Lmodule/sound/C32107S;->M0:[I

    const/16 v4, 0xb

    new-array v5, v4, [I

    .line 7
    fill-array-data v5, :array_3

    iput-object v5, v0, Lmodule/sound/C32107S;->N0:[I

    new-array v5, v3, [I

    .line 8
    fill-array-data v5, :array_4

    iput-object v5, v0, Lmodule/sound/C32107S;->O0:[I

    const/16 v5, 0x11

    new-array v6, v5, [I

    .line 9
    fill-array-data v6, :array_5

    iput-object v6, v0, Lmodule/sound/C32107S;->P0:[I

    const/16 v6, 0x20

    new-array v7, v6, [I

    .line 10
    fill-array-data v7, :array_6

    iput-object v7, v0, Lmodule/sound/C32107S;->Q0:[I

    const/16 v7, 0x15

    new-array v8, v7, [I

    .line 11
    fill-array-data v8, :array_7

    iput-object v8, v0, Lmodule/sound/C32107S;->R0:[I

    const/16 v8, 0x51

    new-array v9, v8, [I

    .line 12
    fill-array-data v9, :array_8

    iput-object v9, v0, Lmodule/sound/C32107S;->S0:[I

    new-array v9, v8, [I

    .line 13
    fill-array-data v9, :array_9

    iput-object v9, v0, Lmodule/sound/C32107S;->T0:[I

    new-array v10, v8, [I

    .line 14
    fill-array-data v10, :array_a

    iput-object v10, v0, Lmodule/sound/C32107S;->U0:[I

    new-array v11, v8, [I

    .line 15
    fill-array-data v11, :array_b

    iput-object v11, v0, Lmodule/sound/C32107S;->V0:[I

    new-array v12, v8, [I

    .line 16
    fill-array-data v12, :array_c

    iput-object v12, v0, Lmodule/sound/C32107S;->W0:[I

    new-array v13, v8, [I

    .line 17
    fill-array-data v13, :array_d

    iput-object v13, v0, Lmodule/sound/C32107S;->X0:[I

    new-array v14, v8, [I

    .line 18
    fill-array-data v14, :array_e

    iput-object v14, v0, Lmodule/sound/C32107S;->Y0:[I

    new-array v15, v8, [I

    .line 19
    fill-array-data v15, :array_f

    iput-object v15, v0, Lmodule/sound/C32107S;->Z0:[I

    new-array v8, v8, [I

    .line 20
    fill-array-data v8, :array_10

    iput-object v8, v0, Lmodule/sound/C32107S;->a1:[I

    const/4 v6, 0x4

    new-array v2, v6, [I

    .line 21
    fill-array-data v2, :array_11

    iput-object v2, v0, Lmodule/sound/C32107S;->b1:[I

    const/4 v2, 0x0

    .line 22
    iput-object v2, v0, Lmodule/sound/C32107S;->c1:[I

    .line 23
    iput-object v2, v0, Lmodule/sound/C32107S;->d1:[I

    const/4 v2, 0x2

    new-array v7, v2, [I

    .line 24
    fill-array-data v7, :array_12

    iput-object v7, v0, Lmodule/sound/C32107S;->e1:[I

    const/16 v7, 0x18

    new-array v5, v7, [I

    .line 25
    fill-array-data v5, :array_13

    iput-object v5, v0, Lmodule/sound/C32107S;->f1:[I

    new-array v5, v2, [I

    .line 26
    fill-array-data v5, :array_14

    iput-object v5, v0, Lmodule/sound/C32107S;->g1:[I

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 27
    fill-array-data v3, :array_15

    const/4 v7, 0x0

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_16

    const/4 v7, 0x1

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_17

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_18

    const/4 v2, 0x3

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_19

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_1a

    const/4 v2, 0x5

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_1b

    const/4 v2, 0x6

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_1c

    const/4 v2, 0x7

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_1d

    const/16 v2, 0x8

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_1e

    const/16 v26, 0x9

    aput-object v3, v5, v26

    new-array v3, v6, [I

    fill-array-data v3, :array_1f

    const/16 v27, 0xa

    aput-object v3, v5, v27

    new-array v3, v6, [I

    fill-array-data v3, :array_20

    aput-object v3, v5, v4

    new-array v3, v6, [I

    fill-array-data v3, :array_21

    const/16 v28, 0xc

    aput-object v3, v5, v28

    new-array v3, v6, [I

    fill-array-data v3, :array_22

    const/16 v2, 0xd

    aput-object v3, v5, v2

    new-array v3, v6, [I

    fill-array-data v3, :array_23

    const/16 v30, 0xe

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_24

    const/16 v30, 0xf

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_25

    const/16 v30, 0x10

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_26

    const/16 v17, 0x11

    aput-object v3, v5, v17

    new-array v3, v6, [I

    fill-array-data v3, :array_27

    const/16 v30, 0x12

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_28

    const/16 v30, 0x13

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_29

    const/16 v30, 0x14

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_2a

    const/16 v16, 0x15

    aput-object v3, v5, v16

    new-array v3, v6, [I

    fill-array-data v3, :array_2b

    const/16 v30, 0x16

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_2c

    const/16 v30, 0x17

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_2d

    const/16 v19, 0x18

    aput-object v3, v5, v19

    new-array v3, v6, [I

    fill-array-data v3, :array_2e

    const/16 v30, 0x19

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_2f

    const/16 v30, 0x1a

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_30

    const/16 v30, 0x1b

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_31

    const/16 v30, 0x1c

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_32

    const/16 v30, 0x1d

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_33

    const/16 v30, 0x1e

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_34

    const/16 v30, 0x1f

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_35

    const/16 v30, 0x20

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_36

    const/16 v30, 0x21

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_37

    const/16 v30, 0x22

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_38

    const/16 v30, 0x23

    aput-object v3, v5, v30

    new-array v3, v6, [I

    fill-array-data v3, :array_39

    const/16 v30, 0x24

    aput-object v3, v5, v30

    iput-object v5, v0, Lmodule/sound/C32107S;->h1:[[I

    new-array v3, v6, [I

    .line 28
    fill-array-data v3, :array_3a

    iput-object v3, v0, Lmodule/sound/C32107S;->i1:[I

    new-array v3, v6, [I

    .line 29
    fill-array-data v3, :array_3b

    iput-object v3, v0, Lmodule/sound/C32107S;->j1:[I

    new-array v3, v6, [I

    .line 30
    fill-array-data v3, :array_3c

    iput-object v3, v0, Lmodule/sound/C32107S;->k1:[I

    new-array v3, v6, [I

    .line 31
    fill-array-data v3, :array_3d

    iput-object v3, v0, Lmodule/sound/C32107S;->l1:[I

    new-array v3, v6, [I

    .line 32
    fill-array-data v3, :array_3e

    iput-object v3, v0, Lmodule/sound/C32107S;->m1:[I

    new-array v3, v6, [I

    .line 33
    fill-array-data v3, :array_3f

    iput-object v3, v0, Lmodule/sound/C32107S;->n1:[I

    new-array v3, v4, [[I

    new-array v5, v6, [I

    .line 34
    fill-array-data v5, :array_40

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_41

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_42

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_43

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_44

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_45

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_46

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_47

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_48

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_49

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_4a

    aput-object v5, v3, v27

    iput-object v3, v0, Lmodule/sound/C32107S;->o1:[[I

    new-array v3, v4, [[I

    new-array v5, v6, [I

    .line 35
    fill-array-data v5, :array_4b

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_4c

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_4d

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_4e

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_4f

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_50

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_51

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_52

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_53

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_54

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_55

    aput-object v5, v3, v27

    iput-object v3, v0, Lmodule/sound/C32107S;->p1:[[I

    const/16 v3, 0x21

    new-array v3, v3, [[I

    new-array v5, v6, [I

    .line 36
    fill-array-data v5, :array_56

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_57

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_58

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_59

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_5a

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_5b

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_5c

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_5d

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_5e

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_5f

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_60

    aput-object v5, v3, v27

    new-array v5, v6, [I

    fill-array-data v5, :array_61

    aput-object v5, v3, v4

    new-array v5, v6, [I

    fill-array-data v5, :array_62

    aput-object v5, v3, v28

    new-array v5, v6, [I

    fill-array-data v5, :array_63

    aput-object v5, v3, v2

    new-array v5, v6, [I

    fill-array-data v5, :array_64

    const/16 v30, 0xe

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_65

    const/16 v30, 0xf

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_66

    const/16 v30, 0x10

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_67

    const/16 v17, 0x11

    aput-object v5, v3, v17

    new-array v5, v6, [I

    fill-array-data v5, :array_68

    const/16 v30, 0x12

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_69

    const/16 v30, 0x13

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_6a

    const/16 v30, 0x14

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_6b

    const/16 v16, 0x15

    aput-object v5, v3, v16

    new-array v5, v6, [I

    fill-array-data v5, :array_6c

    const/16 v30, 0x16

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_6d

    const/16 v30, 0x17

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_6e

    const/16 v19, 0x18

    aput-object v5, v3, v19

    new-array v5, v6, [I

    fill-array-data v5, :array_6f

    const/16 v30, 0x19

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_70

    const/16 v30, 0x1a

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_71

    const/16 v30, 0x1b

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_72

    const/16 v30, 0x1c

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_73

    const/16 v30, 0x1d

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_74

    const/16 v30, 0x1e

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_75

    const/16 v30, 0x1f

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_76

    const/16 v30, 0x20

    aput-object v5, v3, v30

    iput-object v3, v0, Lmodule/sound/C32107S;->q1:[[I

    new-array v3, v4, [[I

    new-array v5, v6, [I

    .line 37
    fill-array-data v5, :array_77

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_78

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_79

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_7a

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_7b

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_7c

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_7d

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_7e

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_7f

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_80

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_81

    aput-object v5, v3, v27

    iput-object v3, v0, Lmodule/sound/C32107S;->r1:[[I

    new-array v3, v4, [I

    .line 38
    fill-array-data v3, :array_82

    iput-object v3, v0, Lmodule/sound/C32107S;->s1:[I

    new-array v3, v4, [I

    .line 39
    fill-array-data v3, :array_83

    iput-object v3, v0, Lmodule/sound/C32107S;->t1:[I

    new-array v3, v4, [I

    .line 40
    fill-array-data v3, :array_84

    iput-object v3, v0, Lmodule/sound/C32107S;->u1:[I

    new-array v3, v4, [D

    .line 41
    fill-array-data v3, :array_85

    iput-object v3, v0, Lmodule/sound/C32107S;->v1:[D

    const/16 v3, 0x8

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 42
    fill-array-data v3, :array_86

    const/16 v20, 0x0

    aput-object v3, v5, v20

    new-array v3, v6, [I

    fill-array-data v3, :array_87

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_88

    const/16 v21, 0x2

    aput-object v3, v5, v21

    new-array v3, v6, [I

    fill-array-data v3, :array_89

    const/16 v22, 0x3

    aput-object v3, v5, v22

    new-array v3, v6, [I

    fill-array-data v3, :array_8a

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_8b

    const/16 v23, 0x5

    aput-object v3, v5, v23

    new-array v3, v6, [I

    fill-array-data v3, :array_8c

    const/16 v24, 0x6

    aput-object v3, v5, v24

    new-array v3, v6, [I

    fill-array-data v3, :array_8d

    const/16 v25, 0x7

    aput-object v3, v5, v25

    iput-object v5, v0, Lmodule/sound/C32107S;->w1:[[I

    const/16 v3, 0x8

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 43
    fill-array-data v3, :array_8e

    const/16 v20, 0x0

    aput-object v3, v5, v20

    new-array v3, v6, [I

    fill-array-data v3, :array_8f

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_90

    const/16 v21, 0x2

    aput-object v3, v5, v21

    new-array v3, v6, [I

    fill-array-data v3, :array_91

    const/16 v22, 0x3

    aput-object v3, v5, v22

    new-array v3, v6, [I

    fill-array-data v3, :array_92

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_93

    const/16 v23, 0x5

    aput-object v3, v5, v23

    new-array v3, v6, [I

    fill-array-data v3, :array_94

    const/16 v24, 0x6

    aput-object v3, v5, v24

    new-array v3, v6, [I

    fill-array-data v3, :array_95

    const/16 v25, 0x7

    aput-object v3, v5, v25

    iput-object v5, v0, Lmodule/sound/C32107S;->x1:[[I

    const/16 v3, 0x8

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 44
    fill-array-data v3, :array_96

    const/16 v20, 0x0

    aput-object v3, v5, v20

    new-array v3, v6, [I

    fill-array-data v3, :array_97

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_98

    const/16 v21, 0x2

    aput-object v3, v5, v21

    new-array v3, v6, [I

    fill-array-data v3, :array_99

    const/16 v22, 0x3

    aput-object v3, v5, v22

    new-array v3, v6, [I

    fill-array-data v3, :array_9a

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_9b

    const/16 v23, 0x5

    aput-object v3, v5, v23

    new-array v3, v6, [I

    fill-array-data v3, :array_9c

    const/16 v24, 0x6

    aput-object v3, v5, v24

    new-array v3, v6, [I

    fill-array-data v3, :array_9d

    const/16 v25, 0x7

    aput-object v3, v5, v25

    iput-object v5, v0, Lmodule/sound/C32107S;->y1:[[I

    const/16 v3, 0x8

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 45
    fill-array-data v3, :array_9e

    const/16 v20, 0x0

    aput-object v3, v5, v20

    new-array v3, v6, [I

    fill-array-data v3, :array_9f

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_a0

    const/16 v21, 0x2

    aput-object v3, v5, v21

    new-array v3, v6, [I

    fill-array-data v3, :array_a1

    const/16 v22, 0x3

    aput-object v3, v5, v22

    new-array v3, v6, [I

    fill-array-data v3, :array_a2

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_a3

    const/16 v23, 0x5

    aput-object v3, v5, v23

    new-array v3, v6, [I

    fill-array-data v3, :array_a4

    const/16 v24, 0x6

    aput-object v3, v5, v24

    new-array v3, v6, [I

    fill-array-data v3, :array_a5

    const/16 v25, 0x7

    aput-object v3, v5, v25

    iput-object v5, v0, Lmodule/sound/C32107S;->z1:[[I

    const/16 v3, 0x8

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 46
    fill-array-data v3, :array_a6

    const/16 v20, 0x0

    aput-object v3, v5, v20

    new-array v3, v6, [I

    fill-array-data v3, :array_a7

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_a8

    const/16 v21, 0x2

    aput-object v3, v5, v21

    new-array v3, v6, [I

    fill-array-data v3, :array_a9

    const/16 v22, 0x3

    aput-object v3, v5, v22

    new-array v3, v6, [I

    fill-array-data v3, :array_aa

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_ab

    const/16 v23, 0x5

    aput-object v3, v5, v23

    new-array v3, v6, [I

    fill-array-data v3, :array_ac

    const/16 v24, 0x6

    aput-object v3, v5, v24

    new-array v3, v6, [I

    fill-array-data v3, :array_ad

    const/16 v25, 0x7

    aput-object v3, v5, v25

    iput-object v5, v0, Lmodule/sound/C32107S;->A1:[[I

    const/16 v3, 0x8

    new-array v5, v3, [[I

    new-array v3, v6, [I

    .line 47
    fill-array-data v3, :array_ae

    const/16 v20, 0x0

    aput-object v3, v5, v20

    new-array v3, v6, [I

    fill-array-data v3, :array_af

    aput-object v3, v5, v7

    new-array v3, v6, [I

    fill-array-data v3, :array_b0

    const/16 v21, 0x2

    aput-object v3, v5, v21

    new-array v3, v6, [I

    fill-array-data v3, :array_b1

    const/16 v22, 0x3

    aput-object v3, v5, v22

    new-array v3, v6, [I

    fill-array-data v3, :array_b2

    aput-object v3, v5, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_b3

    const/16 v23, 0x5

    aput-object v3, v5, v23

    new-array v3, v6, [I

    fill-array-data v3, :array_b4

    const/16 v24, 0x6

    aput-object v3, v5, v24

    new-array v3, v6, [I

    fill-array-data v3, :array_b5

    const/16 v25, 0x7

    aput-object v3, v5, v25

    iput-object v5, v0, Lmodule/sound/C32107S;->B1:[[I

    new-array v3, v2, [[I

    new-array v5, v6, [I

    .line 48
    fill-array-data v5, :array_b6

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_b7

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_b8

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_b9

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_ba

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_bb

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_bc

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_bd

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_be

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_bf

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_c0

    aput-object v5, v3, v27

    new-array v5, v6, [I

    fill-array-data v5, :array_c1

    aput-object v5, v3, v4

    new-array v5, v6, [I

    fill-array-data v5, :array_c2

    aput-object v5, v3, v28

    iput-object v3, v0, Lmodule/sound/C32107S;->C1:[[I

    const/16 v3, 0x37

    new-array v3, v3, [[I

    new-array v5, v6, [I

    .line 49
    fill-array-data v5, :array_c3

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_c4

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_c5

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_c6

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_c7

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_c8

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_c9

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_ca

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_cb

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_cc

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_cd

    aput-object v5, v3, v27

    new-array v5, v6, [I

    fill-array-data v5, :array_ce

    aput-object v5, v3, v4

    new-array v5, v6, [I

    fill-array-data v5, :array_cf

    aput-object v5, v3, v28

    new-array v5, v6, [I

    fill-array-data v5, :array_d0

    aput-object v5, v3, v2

    new-array v5, v6, [I

    fill-array-data v5, :array_d1

    const/16 v30, 0xe

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_d2

    const/16 v30, 0xf

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_d3

    const/16 v30, 0x10

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_d4

    const/16 v17, 0x11

    aput-object v5, v3, v17

    new-array v5, v6, [I

    fill-array-data v5, :array_d5

    const/16 v30, 0x12

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_d6

    const/16 v30, 0x13

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_d7

    const/16 v30, 0x14

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_d8

    const/16 v16, 0x15

    aput-object v5, v3, v16

    new-array v5, v6, [I

    fill-array-data v5, :array_d9

    const/16 v30, 0x16

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_da

    const/16 v30, 0x17

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_db

    const/16 v19, 0x18

    aput-object v5, v3, v19

    new-array v5, v6, [I

    fill-array-data v5, :array_dc

    const/16 v30, 0x19

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_dd

    const/16 v30, 0x1a

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_de

    const/16 v30, 0x1b

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_df

    const/16 v30, 0x1c

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e0

    const/16 v30, 0x1d

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e1

    const/16 v30, 0x1e

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e2

    const/16 v30, 0x1f

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e3

    const/16 v30, 0x20

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e4

    const/16 v30, 0x21

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e5

    const/16 v30, 0x22

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e6

    const/16 v30, 0x23

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e7

    const/16 v30, 0x24

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_e8

    const/16 v18, 0x25

    aput-object v5, v3, v18

    new-array v5, v6, [I

    fill-array-data v5, :array_e9

    const/16 v30, 0x26

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_ea

    const/16 v30, 0x27

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_eb

    const/16 v30, 0x28

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_ec

    const/16 v30, 0x29

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_ed

    const/16 v30, 0x2a

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_ee

    const/16 v30, 0x2b

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_ef

    const/16 v30, 0x2c

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f0

    const/16 v30, 0x2d

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f1

    const/16 v30, 0x2e

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f2

    const/16 v30, 0x2f

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f3

    const/16 v30, 0x30

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f4

    const/16 v30, 0x31

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f5

    const/16 v30, 0x32

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f6

    const/16 v30, 0x33

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f7

    const/16 v30, 0x34

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f8

    const/16 v30, 0x35

    aput-object v5, v3, v30

    new-array v5, v6, [I

    fill-array-data v5, :array_f9

    const/16 v30, 0x36

    aput-object v5, v3, v30

    iput-object v3, v0, Lmodule/sound/C32107S;->D1:[[I

    const/16 v3, 0x29

    new-array v3, v3, [[I

    new-array v5, v6, [I

    .line 50
    fill-array-data v5, :array_fa

    const/16 v20, 0x0

    aput-object v5, v3, v20

    new-array v5, v6, [I

    fill-array-data v5, :array_fb

    aput-object v5, v3, v7

    new-array v5, v6, [I

    fill-array-data v5, :array_fc

    const/16 v21, 0x2

    aput-object v5, v3, v21

    new-array v5, v6, [I

    fill-array-data v5, :array_fd

    const/16 v22, 0x3

    aput-object v5, v3, v22

    new-array v5, v6, [I

    fill-array-data v5, :array_fe

    aput-object v5, v3, v6

    new-array v5, v6, [I

    fill-array-data v5, :array_ff

    const/16 v23, 0x5

    aput-object v5, v3, v23

    new-array v5, v6, [I

    fill-array-data v5, :array_100

    const/16 v24, 0x6

    aput-object v5, v3, v24

    new-array v5, v6, [I

    fill-array-data v5, :array_101

    const/16 v25, 0x7

    aput-object v5, v3, v25

    new-array v5, v6, [I

    fill-array-data v5, :array_102

    const/16 v29, 0x8

    aput-object v5, v3, v29

    new-array v5, v6, [I

    fill-array-data v5, :array_103

    aput-object v5, v3, v26

    new-array v5, v6, [I

    fill-array-data v5, :array_104

    aput-object v5, v3, v27

    new-array v5, v6, [I

    fill-array-data v5, :array_105

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_106

    aput-object v4, v3, v28

    new-array v4, v6, [I

    fill-array-data v4, :array_107

    aput-object v4, v3, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_108

    const/16 v4, 0xe

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_109

    const/16 v4, 0xf

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_10a

    const/16 v4, 0x10

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_10b

    const/16 v4, 0x11

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_10c

    const/16 v4, 0x12

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_10d

    const/16 v4, 0x13

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_10e

    const/16 v4, 0x14

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_10f

    const/16 v4, 0x15

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_110

    const/16 v4, 0x16

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_111

    const/16 v4, 0x17

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_112

    const/16 v4, 0x18

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_113

    const/16 v4, 0x19

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_114

    const/16 v4, 0x1a

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_115

    const/16 v4, 0x1b

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_116

    const/16 v4, 0x1c

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_117

    const/16 v4, 0x1d

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_118

    const/16 v4, 0x1e

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_119

    const/16 v4, 0x1f

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11a

    const/16 v4, 0x20

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11b

    const/16 v4, 0x21

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11c

    const/16 v4, 0x22

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11d

    const/16 v4, 0x23

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11e

    const/16 v4, 0x24

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_11f

    const/16 v4, 0x25

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_120

    const/16 v4, 0x26

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_121

    const/16 v4, 0x27

    aput-object v2, v3, v4

    new-array v2, v6, [I

    fill-array-data v2, :array_122

    const/16 v4, 0x28

    aput-object v2, v3, v4

    iput-object v3, v0, Lmodule/sound/C32107S;->E1:[[I

    new-array v2, v6, [I

    .line 51
    fill-array-data v2, :array_123

    iput-object v2, v0, Lmodule/sound/C32107S;->F1:[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 52
    fill-array-data v3, :array_124

    iput-object v3, v0, Lmodule/sound/C32107S;->G1:[I

    .line 53
    sget-object v3, Lmodule/sound/C32107S$EQType;->b:Lmodule/sound/C32107S$EQType;

    iput-object v3, v0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    .line 54
    iput v7, v0, Lmodule/sound/C32107S;->I1:I

    const/4 v3, 0x0

    .line 55
    iput-object v3, v0, Lmodule/sound/C32107S;->J1:Lo1/n;

    const/4 v3, 0x0

    .line 56
    iput-boolean v3, v0, Lmodule/sound/C32107S;->K1:Z

    .line 57
    iput-boolean v7, v0, Lmodule/sound/C32107S;->L1:Z

    .line 58
    iput-boolean v7, v0, Lmodule/sound/C32107S;->M1:Z

    new-array v3, v2, [I

    .line 59
    fill-array-data v3, :array_125

    iput-object v3, v0, Lmodule/sound/C32107S;->N1:[I

    new-array v3, v2, [I

    .line 60
    fill-array-data v3, :array_126

    iput-object v3, v0, Lmodule/sound/C32107S;->O1:[I

    new-array v2, v6, [I

    .line 61
    iput-object v2, v0, Lmodule/sound/C32107S;->P1:[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    .line 62
    fill-array-data v3, :array_127

    iput-object v3, v0, Lmodule/sound/C32107S;->Q1:[I

    const/16 v3, 0x8

    .line 63
    iput v3, v0, Lmodule/sound/C32107S;->R1:I

    .line 64
    iput v3, v0, Lmodule/sound/C32107S;->S1:I

    new-array v3, v2, [I

    .line 65
    fill-array-data v3, :array_128

    iput-object v3, v0, Lmodule/sound/C32107S;->T1:[I

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 66
    fill-array-data v3, :array_129

    iput-object v3, v0, Lmodule/sound/C32107S;->U1:[I

    new-array v3, v2, [I

    .line 67
    fill-array-data v3, :array_12a

    iput-object v3, v0, Lmodule/sound/C32107S;->V1:[I

    .line 68
    sget v2, Lmodule/sound/C32107S;->o2:I

    iput v2, v0, Lmodule/sound/C32107S;->W1:I

    .line 69
    sget v2, Lmodule/sound/C32107S;->p2:I

    iput v2, v0, Lmodule/sound/C32107S;->X1:I

    const/4 v2, 0x0

    .line 70
    iput-object v2, v0, Lmodule/sound/C32107S;->Y1:Landroid/media/AudioManager;

    const/4 v3, 0x0

    .line 71
    iput v3, v0, Lmodule/sound/C32107S;->Z1:I

    .line 72
    iput-object v2, v0, Lmodule/sound/C32107S;->a2:Ljava/lang/Boolean;

    .line 73
    iput-object v2, v0, Lmodule/sound/C32107S;->b2:Ljava/lang/Integer;

    .line 74
    iput-boolean v7, v0, Lmodule/sound/C32107S;->c2:Z

    .line 75
    iput-boolean v3, v0, Lmodule/sound/C32107S;->d2:Z

    .line 76
    iput-boolean v3, v0, Lmodule/sound/C32107S;->e2:Z

    .line 77
    iput v3, v0, Lmodule/sound/C32107S;->f2:I

    .line 78
    iput v3, v0, Lmodule/sound/C32107S;->g2:I

    .line 79
    iput-boolean v3, v0, Lmodule/sound/C32107S;->h2:Z

    .line 80
    new-instance v2, Lmodule/sound/C32107S$a;

    invoke-direct {v2, v0}, Lmodule/sound/C32107S$a;-><init>(Lmodule/sound/C32107S;)V

    iput-object v2, v0, Lmodule/sound/C32107S;->j2:Ljava/lang/Runnable;

    .line 81
    iput-boolean v7, v0, Lmodule/sound/C32107S;->c2:Z

    .line 82
    iget-object v2, v0, Lmodule/sound/C32107S;->S0:[I

    invoke-virtual {v0, v3, v2}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 83
    invoke-virtual {v0, v7, v9}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x2

    .line 84
    invoke-virtual {v0, v2, v10}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x3

    .line 85
    invoke-virtual {v0, v2, v11}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 86
    invoke-virtual {v0, v6, v12}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x5

    .line 87
    invoke-virtual {v0, v2, v13}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x6

    .line 88
    invoke-virtual {v0, v2, v14}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/4 v2, 0x7

    .line 89
    invoke-virtual {v0, v2, v15}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    const/16 v2, 0x8

    .line 90
    invoke-virtual {v0, v2, v8}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    .line 91
    iput-boolean v3, v0, Lmodule/sound/AudioDevice;->J:Z

    .line 92
    iget-object v2, v0, Lmodule/sound/C32107S;->L0:[I

    invoke-virtual {v0, v2}, Lmodule/sound/AudioDevice;->x([I)V

    const/16 v2, 0x14

    .line 93
    sput v2, Ly0/f;->f0:I

    .line 94
    sput v7, Ly0/f;->t:I

    .line 95
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, v0, Lmodule/sound/C32107S;->Y1:Landroid/media/AudioManager;

    .line 96
    sget-object v2, Lmodule/sound/C32107S$EQType;->c:Lmodule/sound/C32107S$EQType;

    iput-object v2, v0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    if-eqz v1, :cond_0

    .line 97
    iput-object v1, v0, Lmodule/sound/C32107S;->J1:Lo1/n;

    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "C32107S i2c  Device Can\'t be NULL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :array_0
    .array-data 4
        0x1
        0x1c
        0x2
        0x48
        0x3
        0x0
        0x4
        0x0
        0x5
        0x0
        0x6
        0x33
        0x7
        0xff
        0x8
        0xf3
        0x10
        0x6
        0x11
        0x0
        0x12
        0x0
        0x13
        0x0
        0x14
        0x0
        0x15
        0x0
        0x16
        0xc
        0x17
        0x0
        0x18
        0x0
        0x19
        0xc0
        0x1a
        0x0
        0x1b
        0x0
        0x1c
        0x0
        0x1d
        0x0
        0x1e
        0xc0
        0x1f
        0x0
        0x20
        0xc0
        0x21
        0x34
        0x22
        0x5
        0x101
        0x0
        0x102
        0x0
        0x103
        0x0
        0x104
        0x11
        0x105
        0x1
        0x106
        0x80
        0x107
        0x80
        0x108
        0x80
        0x109
        0xb0
        0x10a
        0xa0
        0x200
        0x1
        0x201
        0x41
        0x202
        0x27
        0x203
        0x0
        0x204
        0x0
        0x205
        0x5
        0x206
        0x31
        0x207
        0x0
        0x208
        0x20
        0x400
        0x0
        0x401
        0x0
        0x402
        0x0
        0x403
        0x0
        0x404
        0x0
        0x405
        0x0
        0x406
        0x0
        0x407
        0x0
        0x408
        0x0
        0x409
        0x0
        0x40a
        0x0
        0x40b
        0x0
        0x40c
        0x0
        0x40d
        0x0
        0x500
        0x4
        0x501
        0x0
        0x600
        0x80
        0x610
        0x80
        0x611
        0x80
        0x612
        0x80
        0x613
        0x80
        0x614
        0x80
        0x615
        0x80
        0x616
        0x80
        0x617
        0x80
        0x618
        0x80
        0x619
        0x80
        0x61a
        0x80
        0x61b
        0x80
        0x61c
        0x80
        0x61d
        0x80
        0x61e
        0x80
        0x61f
        0x80
        0x620
        0x0
        0x621
        0x0
        0x622
        0x0
        0x623
        0x0
        0x624
        0x0
        0x625
        0x0
        0x626
        0x0
        0x627
        0x0
        0x628
        0x0
        0x629
        0x0
        0x62a
        0x0
        0x62b
        0x0
        0x62c
        0x0
        0x62d
        0x0
        0x62e
        0x0
        0x62f
        0x0
        0x700
        0x0
        0x701
        0x16
        0x702
        0x96
        0x703
        0x80
        0x704
        0x0
        0x705
        0x80
        0x706
        0x80
        0x707
        0x10
        0x708
        0x0
        0x709
        0x0
        0x800
        0x80
        0x801
        0xb
        0x802
        0x1
        0x803
        0x4
        0x804
        0x0
        0x805
        0x40
        0x900
        0x0
        0x901
        0x0
        0x902
        0x0
        0x903
        0x0
        0x904
        0x0
        0x905
        0x0
        0x906
        0x80
        0x907
        0x80
        0x908
        0x80
        0x909
        0x80
        0x90a
        0x80
        0x90b
        0x7a
        0xa00
        0x80
        0xa01
        0x80
        0xa02
        0x80
        0xa03
        0x80
        0xa04
        0x80
        0xa05
        0x80
        0xffff
        0xff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xb4
        0xa8
        0x9e
        0x96
        0x8f
        0x89
        0x83
        0x7e
        0x7a
        0x76
        0x72
        0x70
        0x6e
        0x6c
        0x6a
        0x68
        0x66
        0x64
        0x62
        0x60
        0x5e
        0x5c
        0x5a
        0x58
        0x56
        0x54
        0x52
        0x50
        0x4e
        0x4c
        0x4a
        0x48
        0x46
        0x44
        0x42
        0x40
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x9f
        0x98
        0x92
        0x8d
        0x88
        0x84
        0x80
        0x7d
        0x7a
        0x77
        0x74
        0x72
        0x70
        0x6e
        0x6c
        0x6a
        0x68
        0x66
        0x64
        0x62
        0x60
        0x5e
        0x5c
        0x5a
        0x58
        0x56
        0x54
        0x52
        0x50
        0x4e
        0x4c
        0x4a
        0x48
        0x46
        0x44
        0x42
    .end array-data

    :array_3
    .array-data 4
        0x80
        0xb5
        0xb2
        0xaf
        0xac
        0xaa
        0xa8
        0xa6
        0xa4
        0xa2
        0xa0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0xa0
        0x92
        0x86
        0x7c
        0x74
        0x6e
        0x6a
        0x66
        0x64
        0x62
        0x61
        0x60
        0x5f
        0x5e
        0x5d
        0x5c
        0x5b
        0x5a
        0x59
        0x58
        0x57
        0x56
        0x55
        0x54
        0x53
        0x52
        0x51
        0x50
        0x4f
        0x4e
        0x4c
        0x4a
        0x48
        0x46
        0x44
        0x42
    .end array-data

    :array_5
    .array-data 4
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa0
        0xa2
        0xa4
        0xa6
        0xa8
        0xaa
        0xaf
        0xb5
        0x80
    .end array-data

    :array_6
    .array-data 4
        0xd
        0xe
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xf
        0x1d
        0x1e
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1f
    .end array-data

    :array_7
    .array-data 4
        -0xa
        -0x9
        -0x8
        -0x7
        -0x6
        -0x5
        -0x4
        -0x3
        -0x2
        -0x1
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data

    :array_8
    .array-data 4
        0x14
        0xa
        0x18
        0x1b
        0xa
        0x18
        0x23
        0xa
        0x18
        0x2e
        0xa
        0x18
        0x3c
        0xa
        0x18
        0x4f
        0xa
        0x18
        0x67
        0xa
        0x18
        0x86
        0xa
        0x18
        0xb0
        0xa
        0x18
        0xe5
        0xa
        0x18
        0x12a
        0xa
        0x18
        0x184
        0xa
        0x18
        0x1fa
        0xa
        0x18
        0x292
        0xa
        0x18
        0x358
        0xa
        0x18
        0x459
        0xa
        0x18
        0x5a8
        0xa
        0x18
        0x75c
        0xa
        0x18
        0x992
        0xa
        0x18
        0xc72
        0xa
        0x18
        0x102e
        0xa
        0x18
        0x1509
        0xa
        0x18
        0x1b59
        0xa
        0x18
        0x238f
        0xa
        0x18
        0x2e3a
        0xa
        0x18
        0x3c19
        0xa
        0x18
        0x4e20
        0xa
        0x18
    .end array-data

    :array_9
    .array-data 4
        0x14
        0xa
        0x18
        0x1b
        0xa
        0x18
        0x23
        0xa
        0x18
        0x2e
        0xa
        0x18
        0x3c
        0xa
        0x18
        0x4f
        0xa
        0x18
        0x67
        0xa
        0x18
        0x86
        0xa
        0x18
        0xb0
        0xa
        0x18
        0xe5
        0xa
        0x18
        0x12a
        0xa
        0x18
        0x184
        0xa
        0x18
        0x1fa
        0xa
        0x18
        0x292
        0xa
        0x18
        0x358
        0xa
        0x18
        0x459
        0xa
        0x18
        0x5a8
        0xa
        0x18
        0x75c
        0xa
        0x18
        0x992
        0xa
        0x18
        0xc72
        0xa
        0x18
        0x102e
        0xa
        0x18
        0x1509
        0xa
        0x18
        0x1b59
        0xa
        0x18
        0x238f
        0xa
        0x18
        0x2e3a
        0xa
        0x18
        0x3c19
        0xa
        0x18
        0x4e20
        0xa
        0x18
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x11
        0x18
        0x1b
        0x11
        0x18
        0x23
        0x11
        0x18
        0x2e
        0x11
        0x18
        0x3c
        0x10
        0x18
        0x4f
        0x10
        0x18
        0x67
        0xe
        0x18
        0x86
        0xc
        0x18
        0xb0
        0xc
        0x18
        0xe5
        0xa
        0x18
        0x12a
        0x9
        0x18
        0x184
        0x7
        0x18
        0x1fa
        0x6
        0x18
        0x292
        0x6
        0x18
        0x358
        0x6
        0x18
        0x459
        0x6
        0x18
        0x5a8
        0x7
        0x18
        0x75c
        0x8
        0x18
        0x992
        0x9
        0x18
        0xc72
        0xc
        0x18
        0x102e
        0xd
        0x18
        0x1509
        0xe
        0x18
        0x1b59
        0x10
        0x18
        0x238f
        0x11
        0x18
        0x2e3a
        0x11
        0x18
        0x3c19
        0x11
        0x18
        0x4e20
        0x11
        0x18
    .end array-data

    :array_b
    .array-data 4
        0x14
        0x4
        0x18
        0x1b
        0x4
        0x18
        0x23
        0x4
        0x18
        0x2e
        0x4
        0x18
        0x3c
        0x4
        0x18
        0x4f
        0x4
        0x18
        0x67
        0x5
        0x18
        0x86
        0x7
        0x18
        0xb0
        0x9
        0x18
        0xe5
        0xa
        0x18
        0x12a
        0xc
        0x18
        0x184
        0xd
        0x18
        0x1fa
        0xe
        0x18
        0x292
        0xd
        0x18
        0x358
        0xc
        0x18
        0x459
        0xc
        0x18
        0x5a8
        0xc
        0x18
        0x75c
        0xc
        0x18
        0x992
        0xd
        0x18
        0xc72
        0xe
        0x18
        0x102e
        0xc
        0x18
        0x1509
        0xa
        0x18
        0x1b59
        0xa
        0x18
        0x238f
        0xa
        0x18
        0x2e3a
        0xa
        0x18
        0x3c19
        0xa
        0x18
        0x4e20
        0xa
        0x18
    .end array-data

    :array_c
    .array-data 4
        0x14
        0x10
        0x18
        0x1b
        0x10
        0x18
        0x23
        0x10
        0x18
        0x2e
        0x10
        0x18
        0x3c
        0x11
        0x18
        0x4f
        0x11
        0x18
        0x67
        0x10
        0x18
        0x86
        0xe
        0x18
        0xb0
        0xc
        0x18
        0xe5
        0xb
        0x18
        0x12a
        0xa
        0x18
        0x184
        0x9
        0x18
        0x1fa
        0x8
        0x18
        0x292
        0xa
        0x18
        0x358
        0xc
        0x18
        0x459
        0xb
        0x18
        0x5a8
        0xa
        0x18
        0x75c
        0x9
        0x18
        0x992
        0x7
        0x18
        0xc72
        0x6
        0x18
        0x102e
        0x6
        0x18
        0x1509
        0x5
        0x18
        0x1b59
        0x5
        0x18
        0x238f
        0x4
        0x18
        0x2e3a
        0x3
        0x18
        0x3c19
        0x3
        0x18
        0x4e20
        0x3
        0x18
    .end array-data

    :array_d
    .array-data 4
        0x14
        0x10
        0x18
        0x1b
        0x10
        0x18
        0x23
        0x10
        0x18
        0x2e
        0xf
        0x18
        0x3c
        0xe
        0x18
        0x4f
        0xe
        0x18
        0x67
        0xa
        0x18
        0x86
        0x8
        0x18
        0xb0
        0x7
        0x18
        0xe5
        0x6
        0x18
        0x12a
        0xa
        0x18
        0x184
        0xc
        0x18
        0x1fa
        0xe
        0x18
        0x292
        0xe
        0x18
        0x358
        0xe
        0x18
        0x459
        0xe
        0x18
        0x5a8
        0xc
        0x18
        0x75c
        0xa
        0x18
        0x992
        0x8
        0x18
        0xc72
        0x6
        0x18
        0x102e
        0x9
        0x18
        0x1509
        0xc
        0x18
        0x1b59
        0x10
        0x18
        0x238f
        0xf
        0x18
        0x2e3a
        0xe
        0x18
        0x3c19
        0xe
        0x18
        0x4e20
        0xe
        0x18
    .end array-data

    :array_e
    .array-data 4
        0x14
        0x10
        0x18
        0x1b
        0x10
        0x18
        0x23
        0x10
        0x18
        0x2e
        0x10
        0x18
        0x3c
        0x10
        0x18
        0x4f
        0x10
        0x18
        0x67
        0x10
        0x18
        0x86
        0x10
        0x18
        0xb0
        0xf
        0x18
        0xe5
        0xe
        0x18
        0x12a
        0xe
        0x18
        0x184
        0xe
        0x18
        0x1fa
        0x10
        0x18
        0x292
        0x10
        0x18
        0x358
        0xf
        0x18
        0x459
        0xe
        0x18
        0x5a8
        0xd
        0x18
        0x75c
        0xc
        0x18
        0x992
        0xc
        0x18
        0xc72
        0xc
        0x18
        0x102e
        0xb
        0x18
        0x1509
        0xa
        0x18
        0x1b59
        0xa
        0x18
        0x238f
        0x9
        0x18
        0x2e3a
        0x8
        0x18
        0x3c19
        0x8
        0x18
        0x4e20
        0x8
        0x18
    .end array-data

    :array_f
    .array-data 4
        0x14
        0xe
        0x18
        0x1b
        0xe
        0x18
        0x23
        0xe
        0x18
        0x2e
        0xd
        0x18
        0x3c
        0xc
        0x18
        0x4f
        0xc
        0x18
        0x67
        0xa
        0x18
        0x86
        0x7
        0x18
        0xb0
        0x5
        0x18
        0xe5
        0x4
        0x18
        0x12a
        0x6
        0x18
        0x184
        0x8
        0x18
        0x1fa
        0xa
        0x18
        0x292
        0xa
        0x18
        0x358
        0xa
        0x18
        0x459
        0xa
        0x18
        0x5a8
        0xa
        0x18
        0x75c
        0xa
        0x18
        0x992
        0xb
        0x18
        0xc72
        0xc
        0x18
        0x102e
        0xc
        0x18
        0x1509
        0xc
        0x18
        0x1b59
        0xd
        0x18
        0x238f
        0xf
        0x18
        0x2e3a
        0x10
        0x18
        0x3c19
        0x10
        0x18
        0x4e20
        0x10
        0x18
    .end array-data

    :array_10
    .array-data 4
        0x14
        0xa
        0x18
        0x1b
        0xa
        0x18
        0x23
        0xa
        0x18
        0x2e
        0xa
        0x18
        0x3c
        0xa
        0x18
        0x4f
        0xc
        0x18
        0x67
        0xd
        0x18
        0x86
        0xe
        0x18
        0xb0
        0xe
        0x18
        0xe5
        0xe
        0x18
        0x12a
        0xf
        0x18
        0x184
        0x10
        0x18
        0x1fa
        0x10
        0x18
        0x292
        0x11
        0x18
        0x358
        0x11
        0x18
        0x459
        0x11
        0x18
        0x5a8
        0x11
        0x18
        0x75c
        0x10
        0x18
        0x992
        0x10
        0x18
        0xc72
        0x10
        0x18
        0x102e
        0x10
        0x18
        0x1509
        0x10
        0x18
        0x1b59
        0x10
        0x18
        0x238f
        0xf
        0x18
        0x2e3a
        0xe
        0x18
        0x3c19
        0xe
        0x18
        0x4e20
        0xe
        0x18
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x0
        0x18
    .end array-data

    :array_13
    .array-data 4
        0x0
        0x18
        0x8
        0x8
        0x0
        0x0
        0x44
        0x0
        0x4
        0x44
        0x0
        0x4
        0x0
        0x0
        0x0
        0x0
        0x80
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x0
        0x1c
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
        0x0
        0x54
    .end array-data

    :array_16
    .array-data 4
        0x0
        0x1
        0xce
        0xdc
    .end array-data

    :array_17
    .array-data 4
        0x0
        0x4
        0xc
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x0
        0x7
        0xb6
        0x78
    .end array-data

    :array_19
    .array-data 4
        0x0
        0xc
        0x39
        0x52
    .end array-data

    :array_1a
    .array-data 4
        0x0
        0x11
        0xab
        0x3e
    .end array-data

    :array_1b
    .array-data 4
        0x0
        0x18
        0x63
        0xd0
    .end array-data

    :array_1c
    .array-data 4
        0x0
        0x20
        0x26
        0xf3
    .end array-data

    :array_1d
    .array-data 4
        0x0
        0x2a
        0x62
        0x81
    .end array-data

    :array_1e
    .array-data 4
        0x0
        0x35
        0x5b
        0xfa
    .end array-data

    :array_1f
    .array-data 4
        0x0
        0x40
        0x26
        0xe7
    .end array-data

    :array_20
    .array-data 4
        0x0
        0x4d
        0x20
        0xac
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x54
        0x91
        0x9a
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x5c
        0xba
        0x51
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x65
        0xac
        0x8c
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x6f
        0x7b
        0xbc
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x7a
        0x3d
        0x32
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x86
        0x8
        0x4f
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x92
        0xf6
        0xb3
    .end array-data

    :array_28
    .array-data 4
        0x0
        0xa1
        0x24
        0x78
    .end array-data

    :array_29
    .array-data 4
        0x0
        0xb0
        0xb0
        0x6e
    .end array-data

    :array_2a
    .array-data 4
        0x0
        0xc1
        0xbc
        0x60
    .end array-data

    :array_2b
    .array-data 4
        0x0
        0xd4
        0x6d
        0x58
    .end array-data

    :array_2c
    .array-data 4
        0x0
        0xe8
        0xeb
        0xf5
    .end array-data

    :array_2d
    .array-data 4
        0x0
        0xff
        0x64
        0xc1
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x18
        0x8
        0x93
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x33
        0xc
        0xf5
    .end array-data

    :array_30
    .array-data 4
        0x1
        0x50
        0xac
        0x9f
    .end array-data

    :array_31
    .array-data 4
        0x1
        0x71
        0x27
        0xf2
    .end array-data

    :array_32
    .array-data 4
        0x1
        0x94
        0xc5
        0x84
    .end array-data

    :array_33
    .array-data 4
        0x1
        0xbb
        0xd2
        0xbb
    .end array-data

    :array_34
    .array-data 4
        0x1
        0xe6
        0xa4
        0x76
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x15
        0x97
        0xc2
    .end array-data

    :array_36
    .array-data 4
        0x2
        0x49
        0x12
        0xa8
    .end array-data

    :array_37
    .array-data 4
        0x2
        0x81
        0x85
        0x8
    .end array-data

    :array_38
    .array-data 4
        0x2
        0xbf
        0x69
        0x8e
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x3
        0x46
        0xba
    .end array-data

    :array_3a
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3b
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x0
        0x0
        0x0
        0x2
    .end array-data

    :array_3d
    .array-data 4
        0x0
        0x0
        0x0
        0x3
    .end array-data

    :array_3e
    .array-data 4
        0x0
        0x0
        0x0
        0x4
    .end array-data

    :array_3f
    .array-data 4
        0x0
        0x0
        0x0
        0x5
    .end array-data

    :array_40
    .array-data 4
        0x0
        0x0
        0x3
        0x47
    .end array-data

    :array_41
    .array-data 4
        0x0
        0x1
        0x47
        0xae
    .end array-data

    :array_42
    .array-data 4
        0x0
        0xc
        0xcc
        0xcd
    .end array-data

    :array_43
    .array-data 4
        0x0
        0x28
        0x7a
        0x27
    .end array-data

    :array_44
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_45
    .array-data 4
        0x0
        0x8f
        0x9e
        0x4d
    .end array-data

    :array_46
    .array-data 4
        0x0
        0xa1
        0x24
        0x78
    .end array-data

    :array_47
    .array-data 4
        0x0
        0xb4
        0xce
        0x8
    .end array-data

    :array_48
    .array-data 4
        0x0
        0xca
        0xdd
        0xc8
    .end array-data

    :array_49
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_4a
    .array-data 4
        0x0
        0xff
        0x64
        0xc1
    .end array-data

    :array_4b
    .array-data 4
        0x0
        0x8
        0xd
        0x6a
    .end array-data

    :array_4c
    .array-data 4
        0x0
        0xa
        0x5e
        0x2b
    .end array-data

    :array_4d
    .array-data 4
        0x0
        0xc
        0xa3
        0x7b
    .end array-data

    :array_4e
    .array-data 4
        0x0
        0xe
        0xdd
        0x92
    .end array-data

    :array_4f
    .array-data 4
        0x0
        0x11
        0xc
        0xa7
    .end array-data

    :array_50
    .array-data 4
        0x0
        0x13
        0x30
        0xf2
    .end array-data

    :array_51
    .array-data 4
        0x0
        0x15
        0x4a
        0xa8
    .end array-data

    :array_52
    .array-data 4
        0x0
        0x17
        0x59
        0xfc
    .end array-data

    :array_53
    .array-data 4
        0x0
        0x19
        0x5f
        0x22
    .end array-data

    :array_54
    .array-data 4
        0x0
        0x1b
        0x5a
        0x4d
    .end array-data

    :array_55
    .array-data 4
        0x0
        0x1d
        0x4b
        0xad
    .end array-data

    :array_56
    .array-data 4
        0x0
        0x40
        0x0
        0x0
    .end array-data

    :array_57
    .array-data 4
        0x0
        0x2c
        0x4e
        0xc5
    .end array-data

    :array_58
    .array-data 4
        0x2
        0xe3
        0x8e
        0x39
    .end array-data

    :array_59
    .array-data 4
        0x0
        0x66
        0x66
        0x66
    .end array-data

    :array_5a
    .array-data 4
        0x0
        0x46
        0xe4
        0x6e
    .end array-data

    :array_5b
    .array-data 4
        0x1
        0x20
        0xe3
        0x8e
    .end array-data

    :array_5c
    .array-data 4
        0x0
        0x8c
        0xcc
        0xcd
    .end array-data

    :array_5d
    .array-data 4
        0x0
        0x61
        0x7a
        0x18
    .end array-data

    :array_5e
    .array-data 4
        0x0
        0x98
        0xcc
        0xfd
    .end array-data

    :array_5f
    .array-data 4
        0x0
        0xb3
        0x33
        0x33
    .end array-data

    :array_60
    .array-data 4
        0x0
        0x7c
        0xf
        0xc1
    .end array-data

    :array_61
    .array-data 4
        0x0
        0x5e
        0x54
        0xc1
    .end array-data

    :array_62
    .array-data 4
        0x0
        0xd9
        0x99
        0x9a
    .end array-data

    :array_63
    .array-data 4
        0x0
        0x96
        0xa5
        0x6a
    .end array-data

    :array_64
    .array-data 4
        0x0
        0x3f
        0xf9
        0xb3
    .end array-data

    :array_65
    .array-data 4
        0x1
        0x0
        0x0
        0x0
    .end array-data

    :array_66
    .array-data 4
        0x0
        0xb1
        0x3b
        0x14
    .end array-data

    :array_67
    .array-data 4
        0x0
        0x2e
        0x38
        0xe4
    .end array-data

    :array_68
    .array-data 4
        0x1
        0x19
        0x99
        0x9a
    .end array-data

    :array_69
    .array-data 4
        0x0
        0xc2
        0xf4
        0x2f
    .end array-data

    :array_6a
    .array-data 4
        0x0
        0x26
        0x33
        0x3f
    .end array-data

    :array_6b
    .array-data 4
        0x1
        0x33
        0x33
        0x33
    .end array-data

    :array_6c
    .array-data 4
        0x0
        0xd4
        0xad
        0x4b
    .end array-data

    :array_6d
    .array-data 4
        0x0
        0x20
        0x19
        0x49
    .end array-data

    :array_6e
    .array-data 4
        0x1
        0x4c
        0xcc
        0xcd
    .end array-data

    :array_6f
    .array-data 4
        0x0
        0xe6
        0x66
        0x66
    .end array-data

    :array_70
    .array-data 4
        0x0
        0x1b
        0x59
        0xb6
    .end array-data

    :array_71
    .array-data 4
        0x1
        0x66
        0x66
        0x66
    .end array-data

    :array_72
    .array-data 4
        0x0
        0xf8
        0x1f
        0x82
    .end array-data

    :array_73
    .array-data 4
        0x0
        0x17
        0x95
        0x30
    .end array-data

    :array_74
    .array-data 4
        0x1
        0x80
        0x0
        0x0
    .end array-data

    :array_75
    .array-data 4
        0x1
        0x9
        0xd8
        0x9e
    .end array-data

    :array_76
    .array-data 4
        0x0
        0x14
        0x8b
        0x10
    .end array-data

    :array_77
    .array-data 4
        0x0
        0x4
        0x17
        0x73
    .end array-data

    :array_78
    .array-data 4
        0x0
        0x5
        0x4b
        0x1a
    .end array-data

    :array_79
    .array-data 4
        0x0
        0x6
        0x7b
        0xc6
    .end array-data

    :array_7a
    .array-data 4
        0x0
        0x7
        0xa9
        0x7e
    .end array-data

    :array_7b
    .array-data 4
        0x0
        0x8
        0xd4
        0x48
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x9
        0xfc
        0x2d
    .end array-data

    :array_7d
    .array-data 4
        0x0
        0xb
        0x21
        0x33
    .end array-data

    :array_7e
    .array-data 4
        0x0
        0xc
        0x43
        0x61
    .end array-data

    :array_7f
    .array-data 4
        0x0
        0xd
        0x62
        0xbf
    .end array-data

    :array_80
    .array-data 4
        0x0
        0xe
        0x7f
        0x53
    .end array-data

    :array_81
    .array-data 4
        0x0
        0xf
        0x99
        0x25
    .end array-data

    :array_82
    .array-data 4
        0x1f4
        0x28a
        0x320
        0x3b6
        0x44c
        0x4e2
        0x578
        0x60e
        0x6a4
        0x73a
        0x7d0
    .end array-data

    :array_83
    .array-data 4
        -0x50
        -0x28
        -0x14
        -0xa
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_84
    .array-data 4
        0xfa
        0x145
        0x190
        0x1db
        0x226
        0x271
        0x2bc
        0x307
        0x352
        0x39d
        0x3e8
    .end array-data

    :array_85
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe999999999999aL    # 0.8
        0x3ff199999999999aL    # 1.1
        0x3ff6666666666666L    # 1.4
        0x3ffb333333333333L    # 1.7
        0x4000000000000000L    # 2.0
        0x400199999999999aL    # 2.2
        0x4003333333333333L    # 2.4
        0x4004cccccccccccdL    # 2.6
        0x4006666666666666L    # 2.8
        0x4008000000000000L    # 3.0
    .end array-data

    :array_86
    .array-data 4
        0x0
        0x0
        0x55
        0xc9
    .end array-data

    :array_87
    .array-data 4
        0x0
        0x0
        0xd6
        0x77
    .end array-data

    :array_88
    .array-data 4
        0x0
        0x1
        0xe
        0x3a
    .end array-data

    :array_89
    .array-data 4
        0x0
        0x1
        0x57
        0x25
    .end array-data

    :array_8a
    .array-data 4
        0x0
        0x1
        0xac
        0xee
    .end array-data

    :array_8b
    .array-data 4
        0x0
        0x2
        0x18
        0x29
    .end array-data

    :array_8c
    .array-data 4
        0x0
        0x2
        0xae
        0x47
    .end array-data

    :array_8d
    .array-data 4
        0x0
        0x3
        0x59
        0xd7
    .end array-data

    :array_8e
    .array-data 4
        0x0
        0x0
        0x0
        0x39
    .end array-data

    :array_8f
    .array-data 4
        0x0
        0x0
        0x1
        0x64
    .end array-data

    :array_90
    .array-data 4
        0x0
        0x0
        0x2
        0x34
    .end array-data

    :array_91
    .array-data 4
        0x0
        0x0
        0x3
        0x8a
    .end array-data

    :array_92
    .array-data 4
        0x0
        0x0
        0x5
        0x83
    .end array-data

    :array_93
    .array-data 4
        0x0
        0x0
        0x8
        0x93
    .end array-data

    :array_94
    .array-data 4
        0x0
        0x0
        0xd
        0xf5
    .end array-data

    :array_95
    .array-data 4
        0x0
        0x0
        0x15
        0xa7
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x0
        0x0
        0x73
    .end array-data

    :array_97
    .array-data 4
        0x0
        0x0
        0x2
        0xc8
    .end array-data

    :array_98
    .array-data 4
        0x0
        0x0
        0x4
        0x68
    .end array-data

    :array_99
    .array-data 4
        0x0
        0x0
        0x7
        0x15
    .end array-data

    :array_9a
    .array-data 4
        0x0
        0x0
        0xb
        0x6
    .end array-data

    :array_9b
    .array-data 4
        0x0
        0x0
        0x11
        0x26
    .end array-data

    :array_9c
    .array-data 4
        0x0
        0x0
        0x1b
        0xeb
    .end array-data

    :array_9d
    .array-data 4
        0x0
        0x0
        0x2b
        0x4e
    .end array-data

    :array_9e
    .array-data 4
        0x0
        0x0
        0x0
        0x39
    .end array-data

    :array_9f
    .array-data 4
        0x0
        0x0
        0x1
        0x64
    .end array-data

    :array_a0
    .array-data 4
        0x0
        0x0
        0x2
        0x34
    .end array-data

    :array_a1
    .array-data 4
        0x0
        0x0
        0x3
        0x8a
    .end array-data

    :array_a2
    .array-data 4
        0x0
        0x0
        0x5
        0x83
    .end array-data

    :array_a3
    .array-data 4
        0x0
        0x0
        0x8
        0x93
    .end array-data

    :array_a4
    .array-data 4
        0x0
        0x0
        0xd
        0xf5
    .end array-data

    :array_a5
    .array-data 4
        0x0
        0x0
        0x15
        0xa7
    .end array-data

    :array_a6
    .array-data 4
        0x0
        0xff
        0xd
        0x53
    .end array-data

    :array_a7
    .array-data 4
        0x0
        0xfd
        0xa1
        0x53
    .end array-data

    :array_a8
    .array-data 4
        0x0
        0xfd
        0x3
        0x9a
    .end array-data

    :array_a9
    .array-data 4
        0x0
        0xfc
        0x35
        0x5d
    .end array-data

    :array_aa
    .array-data 4
        0x0
        0xfb
        0x42
        0xc1
    .end array-data

    :array_ab
    .array-data 4
        0x0
        0xfa
        0x13
        0x8a
    .end array-data

    :array_ac
    .array-data 4
        0x0
        0xf8
        0x6b
        0x24
    .end array-data

    :array_ad
    .array-data 4
        0x0
        0xf6
        0x86
        0x4d
    .end array-data

    :array_ae
    .array-data 4
        0xff
        0x80
        0xf1
        0xc8
    .end array-data

    :array_af
    .array-data 4
        0xff
        0x82
        0x59
        0x1d
    .end array-data

    :array_b0
    .array-data 4
        0xff
        0x82
        0xf3
        0x96
    .end array-data

    :array_b1
    .array-data 4
        0xff
        0x83
        0xbc
        0x79
    .end array-data

    :array_b2
    .array-data 4
        0xff
        0x84
        0xa7
        0x32
    .end array-data

    :array_b3
    .array-data 4
        0xff
        0x85
        0xca
        0x2a
    .end array-data

    :array_b4
    .array-data 4
        0xff
        0x87
        0x5d
        0x7
    .end array-data

    :array_b5
    .array-data 4
        0xff
        0x89
        0x23
        0x17
    .end array-data

    :array_b6
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_b7
    .array-data 4
        0x0
        0x6a
        0x77
        0x3c
    .end array-data

    :array_b8
    .array-data 4
        0x0
        0x5a
        0x9d
        0xf8
    .end array-data

    :array_b9
    .array-data 4
        0x0
        0x4b
        0x5f
        0x3b
    .end array-data

    :array_ba
    .array-data 4
        0x0
        0x40
        0x26
        0xe7
    .end array-data

    :array_bb
    .array-data 4
        0x0
        0x35
        0x5b
        0xfa
    .end array-data

    :array_bc
    .array-data 4
        0x0
        0x2d
        0x6a
        0x86
    .end array-data

    :array_bd
    .array-data 4
        0x0
        0x25
        0xc6
        0x86
    .end array-data

    :array_be
    .array-data 4
        0x0
        0x20
        0x26
        0xf3
    .end array-data

    :array_bf
    .array-data 4
        0x0
        0x1a
        0xbe
        0x35
    .end array-data

    :array_c0
    .array-data 4
        0x0
        0x16
        0xc3
        0x11
    .end array-data

    :array_c1
    .array-data 4
        0x0
        0x12
        0xee
        0xbe
    .end array-data

    :array_c2
    .array-data 4
        0x0
        0x10
        0x1d
        0x3f
    .end array-data

    :array_c3
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x0
        0xa1
        0x24
        0x78
    .end array-data

    :array_c5
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_c6
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_c7
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_c8
    .array-data 4
        0x0
        0x72
        0x9b
        0x50
    .end array-data

    :array_c9
    .array-data 4
        0x0
        0x90
        0x48
        0x2
    .end array-data

    :array_ca
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_cb
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_cc
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_cd
    .array-data 4
        0x0
        0x66
        0x9d
        0x63
    .end array-data

    :array_ce
    .array-data 4
        0x0
        0x81
        0x2f
        0x33
    .end array-data

    :array_cf
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_d0
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_d1
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_d2
    .array-data 4
        0x0
        0x5b
        0xe0
        0xaf
    .end array-data

    :array_d3
    .array-data 4
        0x0
        0x73
        0xaa
        0xc9
    .end array-data

    :array_d4
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_d5
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_d6
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_d7
    .array-data 4
        0x0
        0x50
        0xc3
        0x36
    .end array-data

    :array_d8
    .array-data 4
        0x0
        0x65
        0xac
        0x8c
    .end array-data

    :array_d9
    .array-data 4
        0x0
        0xca
        0xdd
        0xc8
    .end array-data

    :array_da
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_db
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_dc
    .array-data 4
        0x0
        0x48
        0x4f
        0xdb
    .end array-data

    :array_dd
    .array-data 4
        0x0
        0x5b
        0x9
        0xb
    .end array-data

    :array_de
    .array-data 4
        0x0
        0xb5
        0xa3
        0xad
    .end array-data

    :array_df
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_e0
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_e1
    .array-data 4
        0x0
        0x40
        0xbe
        0xdd
    .end array-data

    :array_e2
    .array-data 4
        0x0
        0x51
        0x82
        0x84
    .end array-data

    :array_e3
    .array-data 4
        0x0
        0xa2
        0xa2
        0x2c
    .end array-data

    :array_e4
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_e5
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_e6
    .array-data 4
        0x0
        0x39
        0xf8
        0x8c
    .end array-data

    :array_e7
    .array-data 4
        0x0
        0x48
        0xfb
        0x25
    .end array-data

    :array_e8
    .array-data 4
        0x0
        0x91
        0x9d
        0xc5
    .end array-data

    :array_e9
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_ea
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_eb
    .array-data 4
        0x0
        0x32
        0xf5
        0x2d
    .end array-data

    :array_ec
    .array-data 4
        0x0
        0x40
        0x26
        0xe7
    .end array-data

    :array_ed
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_ee
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_ef
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_f0
    .array-data 4
        0x0
        0x2d
        0xa0
        0x31
    .end array-data

    :array_f1
    .array-data 4
        0x0
        0x39
        0x70
        0x7d
    .end array-data

    :array_f2
    .array-data 4
        0x0
        0x72
        0x9b
        0x50
    .end array-data

    :array_f3
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_f4
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_f5
    .array-data 4
        0x0
        0x19
        0xc6
        0x92
    .end array-data

    :array_f6
    .array-data 4
        0x0
        0x33
        0x6d
        0xe2
    .end array-data

    :array_f7
    .array-data 4
        0x0
        0x66
        0x9d
        0x63
    .end array-data

    :array_f8
    .array-data 4
        0x0
        0xcc
        0xbe
        0x51
    .end array-data

    :array_f9
    .array-data 4
        0x0
        0xe3
        0x9e
        0xa9
    .end array-data

    :array_fa
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_fb
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_fc
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_fd
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_fe
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_ff
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_100
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_101
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_102
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_103
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_104
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_105
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_106
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_107
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_108
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_109
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_10a
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_10b
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_10c
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_10d
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_10e
    .array-data 4
        0x0
        0x80
        0x0
        0x0
    .end array-data

    :array_10f
    .array-data 4
        0x0
        0x72
        0x14
        0x83
    .end array-data

    :array_110
    .array-data 4
        0x0
        0x65
        0xac
        0x8c
    .end array-data

    :array_111
    .array-data 4
        0x0
        0x5a
        0x9d
        0xf8
    .end array-data

    :array_112
    .array-data 4
        0x0
        0x50
        0xc3
        0x36
    .end array-data

    :array_113
    .array-data 4
        0x0
        0x47
        0xfa
        0xcd
    .end array-data

    :array_114
    .array-data 4
        0x0
        0x40
        0x26
        0xe7
    .end array-data

    :array_115
    .array-data 4
        0x0
        0x39
        0x2c
        0xee
    .end array-data

    :array_116
    .array-data 4
        0x0
        0x32
        0xf5
        0x2d
    .end array-data

    :array_117
    .array-data 4
        0x0
        0x2d
        0x6a
        0x86
    .end array-data

    :array_118
    .array-data 4
        0x0
        0x28
        0x7a
        0x27
    .end array-data

    :array_119
    .array-data 4
        0x0
        0x24
        0x13
        0x47
    .end array-data

    :array_11a
    .array-data 4
        0x0
        0x20
        0x26
        0xf3
    .end array-data

    :array_11b
    .array-data 4
        0x0
        0x1c
        0xa7
        0xd7
    .end array-data

    :array_11c
    .array-data 4
        0x0
        0x19
        0x8a
        0x13
    .end array-data

    :array_11d
    .array-data 4
        0x0
        0x16
        0xc3
        0x11
    .end array-data

    :array_11e
    .array-data 4
        0x0
        0x14
        0x49
        0x61
    .end array-data

    :array_11f
    .array-data 4
        0x0
        0x12
        0x14
        0x9a
    .end array-data

    :array_120
    .array-data 4
        0x0
        0x10
        0x1d
        0x3f
    .end array-data

    :array_121
    .array-data 4
        0x0
        0xe
        0x5c
        0xa1
    .end array-data

    :array_122
    .array-data 4
        0x0
        0xc
        0xcc
        0xcd
    .end array-data

    :array_123
    .array-data 4
        0x0
        0x0
        0x8
        0x0
    .end array-data

    :array_124
    .array-data 4
        0x0
        0x3c
    .end array-data

    :array_125
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_126
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_127
    .array-data 4
        0x14
        0x14
        0x14
        0x14
        0x14
    .end array-data

    :array_128
    .array-data 4
        0x28
        0x14
        0x14
        0x0
        0x0
    .end array-data

    :array_129
    .array-data 4
        0x5
        0x5
    .end array-data

    :array_12a
    .array-data 4
        0x5
        0x5
    .end array-data
.end method


# virtual methods
.method public A1(IZ)V
    .locals 6

    if-ltz p1, :cond_4

    .line 1
    sget-object v0, Lmodule/sound/AudioDevice;->G0:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/16 v1, 0x19

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2
    :goto_0
    invoke-virtual {p0, v1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result v1

    .line 3
    sget-object v2, Lmodule/sound/C32107S$REG;->G:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    const/4 v3, 0x1

    new-array v4, v3, [I

    aput v1, v4, v0

    invoke-virtual {p0, v2, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 4
    sget-object v2, Lmodule/sound/C32107S$REG;->H:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v3, [I

    aput v1, v4, v0

    invoke-virtual {p0, v2, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 5
    sget-object v2, Lmodule/sound/C32107S$REG;->I:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v3, [I

    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->m1(I)I

    move-result v5

    aput v5, v4, v0

    invoke-virtual {p0, v2, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 6
    sget-object v2, Lmodule/sound/C32107S$REG;->J:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v3, [I

    aput v1, v3, v0

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 7
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->B1(IZ)V

    if-nez p2, :cond_2

    .line 8
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    if-eq p1, p2, :cond_3

    :cond_2
    iput p1, p0, Lmodule/sound/AudioDevice;->g:I

    .line 9
    :cond_3
    invoke-virtual {p0}, Lmodule/sound/C32107S;->R1()V

    .line 10
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->l(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public B()Z
    .locals 4

    .line 1
    sget v0, Lu0/b;->n4:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_1

    sget v0, Lu0/b;->a0:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lmodule/sound/C32107S$REG;->e:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->d2(I)I

    move-result v0

    .line 3
    sget-object v2, Lmodule/sound/C32107S$REG;->F:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v2}, Lmodule/sound/C32107S;->d2(I)I

    move-result v2

    const/16 v3, 0x1c

    if-eq v0, v3, :cond_1

    const/4 v0, 0x4

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public B0(III)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->M1:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/C32107S$REG;->y:Lmodule/sound/C32107S$REG;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x20000

    if-ne p1, v1, :cond_2

    .line 3
    sget-object v0, Lmodule/sound/C32107S$REG;->z:Lmodule/sound/C32107S$REG;

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0, v0, p2, p3}, Lmodule/sound/C32107S;->a2(Lmodule/sound/C32107S$REG;II)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lmodule/sound/AudioDevice;->B0(III)V

    :cond_3
    return-void
.end method

.method public B1(IZ)V
    .locals 9

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->g:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lmodule/sound/AudioDevice;->U:I

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lmodule/sound/AudioDevice;->T:I

    .line 7
    iget v0, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne v0, p1, :cond_3

    iget-boolean v3, p0, Lmodule/sound/AudioDevice;->R:Z

    if-nez v3, :cond_3

    if-nez p2, :cond_3

    return-void

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_4

    .line 8
    iput v2, p0, Lmodule/sound/AudioDevice;->Q:I

    :cond_4
    if-eqz p2, :cond_6

    .line 9
    iget p2, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne p2, p1, :cond_5

    .line 10
    iput v3, p0, Lmodule/sound/AudioDevice;->Q:I

    .line 11
    :cond_5
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->C1(I)V

    .line 12
    iput v3, p0, Lmodule/sound/AudioDevice;->U:I

    return-void

    .line 13
    :cond_6
    iget p2, p0, Lmodule/sound/AudioDevice;->U:I

    if-eq p2, v3, :cond_7

    iget v0, p0, Lmodule/sound/AudioDevice;->Q:I

    if-eq v0, p2, :cond_7

    .line 14
    invoke-virtual {p0, p2}, Lmodule/sound/C32107S;->C1(I)V

    .line 15
    iput v3, p0, Lmodule/sound/AudioDevice;->U:I

    .line 16
    :cond_7
    iget p2, p0, Lmodule/sound/AudioDevice;->g:I

    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr p2, v0

    const-wide/16 v3, 0x4b0

    float-to-double v5, p2

    const-wide v7, 0x3fd999999999999aL    # 0.4

    cmpg-double v0, v5, v7

    if-gez v0, :cond_8

    .line 17
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->C1(I)V

    return-void

    :cond_8
    const v0, 0x3f19999a    # 0.6f

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_9

    const-wide/16 v3, 0x1f4

    goto :goto_1

    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_a

    const-wide/16 v3, 0x320

    .line 18
    :cond_a
    :goto_1
    iput p1, p0, Lmodule/sound/AudioDevice;->U:I

    const/4 p2, 0x2

    new-array p2, p2, [I

    .line 19
    iget v0, p0, Lmodule/sound/AudioDevice;->Q:I

    aput v0, p2, v2

    aput p1, p2, v1

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    .line 20
    iget-object p2, p0, Lmodule/sound/AudioDevice;->d0:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 21
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 22
    iget-object p1, p0, Lmodule/sound/AudioDevice;->S:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public C0(II)V
    .locals 5

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->y:Lmodule/sound/C32107S$REG;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/C32107S$REG;->z:Lmodule/sound/C32107S$REG;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 3
    sget-object v1, Lmodule/sound/C32107S$P2BFreq;->b:Lmodule/sound/C32107S$P2BFreq;

    iget v1, v1, Lmodule/sound/C32107S$P2BFreq;->a:I

    sget-object v2, Lmodule/sound/C32107S$P2BFreq;->i:Lmodule/sound/C32107S$P2BFreq;

    iget v2, v2, Lmodule/sound/C32107S$P2BFreq;->a:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    sget-object v1, Lmodule/sound/C32107S$REG;->y:Lmodule/sound/C32107S$REG;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lmodule/sound/C32107S;->N1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_2

    .line 5
    aput p2, v1, v3

    .line 6
    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107S;->a2(Lmodule/sound/C32107S$REG;II)V

    goto :goto_1

    .line 7
    :cond_2
    sget-object v1, Lmodule/sound/C32107S$REG;->z:Lmodule/sound/C32107S$REG;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lmodule/sound/C32107S;->O1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_3

    .line 8
    aput p2, v1, v3

    .line 9
    aget v3, v1, v3

    aget v1, v1, v2

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107S;->a2(Lmodule/sound/C32107S$REG;II)V

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 10
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->C0(II)V

    :cond_4
    return-void
.end method

.method public C1(I)V
    .locals 4

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->Q:I

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->R:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmodule/sound/AudioDevice;->R:Z

    .line 3
    iput p1, p0, Lmodule/sound/AudioDevice;->Q:I

    .line 4
    sget-object v1, Lmodule/sound/C32107S$REG;->K:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Lmodule/sound/C32107S;->O0:[I

    aget v3, v3, p1

    aput v3, v2, v0

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->l:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v1, p0, Lmodule/sound/C32107S;->h1:[[I

    aget-object p1, v1, p1

    invoke-virtual {p0, v0, p1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 7
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->m:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->F1:[I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public D(I[I[F[Ljava/lang/String;)V
    .locals 9

    const/16 p3, 0x38

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_4

    const/16 p3, 0x3a

    if-eq p1, p3, :cond_2

    const/16 p3, 0x3b

    if-eq p1, p3, :cond_0

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2
    aget p1, p2, v0

    if-ne p1, p4, :cond_1

    move p1, p4

    goto :goto_0

    :cond_1
    move p1, v0

    .line 3
    :goto_0
    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->C:Z

    if-eq p2, p1, :cond_8

    .line 4
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->C:Z

    .line 5
    sget-object p2, Lmodule/sound/AudioDevice$STORE;->T:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array p1, p4, [I

    .line 6
    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->C:Z

    aput p2, p1, v0

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 7
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->C:Z

    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->h2(Z)V

    goto/16 :goto_2

    .line 8
    :cond_2
    invoke-static {p2, v0}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 9
    aget p1, p2, v0

    if-ne p1, p4, :cond_3

    move p1, p4

    goto :goto_1

    :cond_3
    move p1, v0

    .line 10
    :goto_1
    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->B:Z

    if-eq p2, p1, :cond_8

    .line 11
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->B:Z

    .line 12
    sget-object p2, Lmodule/sound/AudioDevice$STORE;->S:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, p2, p1}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    new-array p1, p4, [I

    .line 13
    iget-boolean p2, p0, Lmodule/sound/AudioDevice;->B:Z

    aput p2, p1, v0

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 14
    iget p1, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->o(I)V

    goto/16 :goto_2

    .line 15
    :cond_4
    invoke-static {p2, p4}, Lo1/s0;->h([II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 16
    aget p1, p2, v0

    const/16 v1, 0x10

    and-int/2addr p1, v1

    const/4 v2, 0x3

    const v3, 0x20020

    const v4, 0x10020

    const v5, 0x20010

    const v6, 0x10010

    const/4 v7, 0x2

    if-nez p1, :cond_6

    .line 17
    aget p1, p2, p4

    iget v1, p0, Lmodule/sound/C32107S;->f2:I

    if-eq p1, v1, :cond_8

    .line 18
    aget p1, p2, p4

    iput p1, p0, Lmodule/sound/C32107S;->f2:I

    if-eq p1, v7, :cond_5

    .line 19
    iput v0, p0, Lmodule/sound/C32107S;->f2:I

    .line 20
    :cond_5
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, v0

    invoke-virtual {p0, v6, p1}, Lmodule/sound/C32107S;->g0(II)V

    .line 21
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, v7

    invoke-virtual {p0, v5, p1}, Lmodule/sound/C32107S;->g0(II)V

    .line 22
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, p4

    invoke-virtual {p0, v4, p1}, Lmodule/sound/C32107S;->g0(II)V

    .line 23
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, v2

    invoke-virtual {p0, v3, p1}, Lmodule/sound/C32107S;->g0(II)V

    new-array p1, v7, [I

    aput v0, p1, v0

    .line 24
    iget p2, p0, Lmodule/sound/C32107S;->f2:I

    aput p2, p1, p4

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 25
    sget-object p1, Lmodule/sound/AudioDevice$STORE;->P:Lmodule/sound/AudioDevice$STORE;

    iget p2, p0, Lmodule/sound/C32107S;->f2:I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 26
    iget-object p2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lo1/h0;->e(I)V

    goto :goto_2

    .line 27
    :cond_6
    aget p1, p2, v0

    and-int/2addr p1, v1

    if-eqz p1, :cond_8

    .line 28
    aget p1, p2, p4

    iget v8, p0, Lmodule/sound/C32107S;->g2:I

    if-eq p1, v8, :cond_8

    .line 29
    aget p1, p2, p4

    iput p1, p0, Lmodule/sound/C32107S;->g2:I

    if-eq p1, v7, :cond_7

    .line 30
    iput v0, p0, Lmodule/sound/C32107S;->g2:I

    .line 31
    :cond_7
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, v0

    invoke-virtual {p0, v6, p1}, Lmodule/sound/C32107S;->g0(II)V

    .line 32
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, v7

    invoke-virtual {p0, v5, p1}, Lmodule/sound/C32107S;->g0(II)V

    .line 33
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, p4

    invoke-virtual {p0, v4, p1}, Lmodule/sound/C32107S;->g0(II)V

    .line 34
    iget-object p1, p0, Lmodule/sound/C32107S;->P1:[I

    aget p1, p1, v2

    invoke-virtual {p0, v3, p1}, Lmodule/sound/C32107S;->g0(II)V

    new-array p1, v7, [I

    aput v1, p1, v0

    .line 35
    iget p2, p0, Lmodule/sound/C32107S;->g2:I

    aput p2, p1, p4

    invoke-static {p3, p1}, Ly0/h;->s0(I[I)V

    .line 36
    sget-object p1, Lmodule/sound/AudioDevice$STORE;->Q:Lmodule/sound/AudioDevice$STORE;

    iget p2, p0, Lmodule/sound/C32107S;->g2:I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/AudioDevice;->G0(Lmodule/sound/AudioDevice$STORE;I)V

    .line 37
    iget-object p2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Lo1/h0;->e(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public D0(II)V
    .locals 5

    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->y:Lmodule/sound/C32107S$REG;

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    if-ne p1, v0, :cond_1

    .line 2
    sget-object v0, Lmodule/sound/C32107S$REG;->z:Lmodule/sound/C32107S$REG;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 3
    sget-object v1, Lmodule/sound/C32107S$P2BGain;->b:Lmodule/sound/C32107S$P2BGain;

    iget v1, v1, Lmodule/sound/C32107S$P2BGain;->a:I

    sget-object v2, Lmodule/sound/C32107S$P2BGain;->n:Lmodule/sound/C32107S$P2BGain;

    iget v2, v2, Lmodule/sound/C32107S$P2BGain;->a:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 4
    sget-object v1, Lmodule/sound/C32107S$REG;->y:Lmodule/sound/C32107S$REG;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lmodule/sound/C32107S;->N1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_2

    .line 5
    aput p2, v1, v3

    .line 6
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lmodule/sound/C32107S;->a2(Lmodule/sound/C32107S$REG;II)V

    :goto_1
    move v2, v3

    goto :goto_2

    .line 7
    :cond_2
    sget-object v1, Lmodule/sound/C32107S$REG;->z:Lmodule/sound/C32107S$REG;

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lmodule/sound/C32107S;->O1:[I

    aget v4, v1, v3

    if-eq p2, v4, :cond_3

    .line 8
    aput p2, v1, v3

    .line 9
    aget v2, v1, v2

    aget v1, v1, v3

    invoke-virtual {p0, v0, v2, v1}, Lmodule/sound/C32107S;->a2(Lmodule/sound/C32107S$REG;II)V

    goto :goto_1

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 10
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->D0(II)V

    :cond_4
    return-void
.end method

.method public varargs declared-synchronized D1(II[I)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v5, 0x4

    aput v1, v0, v5

    .line 1
    aget v6, p3, v1

    aput v6, v0, v2

    .line 2
    aget v6, p3, v2

    aput v6, v0, v3

    .line 3
    aget v6, p3, v3

    aput v6, v0, v4

    .line 4
    aget p3, p3, v4

    aput p3, v0, v5

    .line 5
    sget-object p3, Lmodule/sound/C32107S$REG_ADI;->a0:Lmodule/sound/C32107S$REG_ADI;

    iget p3, p3, Lmodule/sound/C32107S$REG_ADI;->a:I

    add-int/2addr p3, p2

    invoke-virtual {p0, p3, v0}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 6
    sget-object p3, Lmodule/sound/C32107S$REG_ADI;->b0:Lmodule/sound/C32107S$REG_ADI;

    iget p3, p3, Lmodule/sound/C32107S$REG_ADI;->a:I

    add-int/2addr p3, p2

    new-array v0, v3, [I

    add-int/2addr p1, p2

    invoke-static {p1, v2}, Lo1/s0;->c(II)I

    move-result p2

    aput p2, v0, v1

    invoke-static {p1, v1}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v0, v2

    invoke-virtual {p0, p3, v0}, Lmodule/sound/C32107S;->o2(I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public E0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->M1:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/C32107S;->M1:Z

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->b2(Z)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->E0(Z)V

    return-void
.end method

.method public varargs declared-synchronized E1(I[I)V
    .locals 7

    monitor-enter p0

    const/4 v0, 0x5

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v1, v0, v4

    const/4 v5, 0x4

    aput v1, v0, v5

    .line 1
    aget v6, p2, v1

    aput v6, v0, v2

    .line 2
    aget v6, p2, v2

    aput v6, v0, v3

    .line 3
    aget v6, p2, v3

    aput v6, v0, v4

    .line 4
    aget p2, p2, v4

    aput p2, v0, v5

    .line 5
    sget-object p2, Lmodule/sound/C32107S$REG_ADI;->a0:Lmodule/sound/C32107S$REG_ADI;

    iget p2, p2, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p2, v0}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 6
    sget-object p2, Lmodule/sound/C32107S$REG_ADI;->b0:Lmodule/sound/C32107S$REG_ADI;

    iget p2, p2, Lmodule/sound/C32107S$REG_ADI;->a:I

    new-array v0, v3, [I

    invoke-static {p1, v2}, Lo1/s0;->c(II)I

    move-result v3

    aput v3, v0, v1

    invoke-static {p1, v1}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v0, v2

    invoke-virtual {p0, p2, v0}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 7
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p2, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->o2(I[I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public F()V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/C32107S$CHANNEL;->b:Lmodule/sound/C32107S$CHANNEL;

    iget v1, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 2
    sget-object v1, Lmodule/sound/C32107S$CHANNEL;->e:Lmodule/sound/C32107S$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 3
    iget v1, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 4
    iget v1, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 5
    sget-object v1, Lmodule/sound/C32107S$CHANNEL;->d:Lmodule/sound/C32107S$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 6
    sget-object v1, Lmodule/sound/C32107S$CHANNEL;->f:Lmodule/sound/C32107S$CHANNEL;

    iget v2, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v3, 0x5

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 7
    sget-object v2, Lmodule/sound/C32107S$CHANNEL;->c:Lmodule/sound/C32107S$CHANNEL;

    iget v2, v2, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v3, 0x6

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 8
    iget v2, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v3, 0x7

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 9
    iget v2, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v3, 0x8

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 10
    iget v2, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 11
    iget v2, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 12
    iget v2, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 13
    iget v2, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v3, 0xc

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 14
    iget v2, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v3, 0xd

    invoke-virtual {p0, v3, v2}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 15
    iget v1, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 16
    iget v1, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v2, 0xf

    invoke-virtual {p0, v2, v1}, Lmodule/sound/AudioDevice;->L0(II)V

    .line 17
    iget v0, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/16 v1, 0x10

    invoke-virtual {p0, v1, v0}, Lmodule/sound/AudioDevice;->L0(II)V

    return-void
.end method

.method public final F1(Z)V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/16 v2, 0x80

    const/4 v3, 0x1

    if-nez p1, :cond_0

    aput v2, v1, v3

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->T:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    const/4 p1, 0x0

    aput p1, v1, v3

    .line 4
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->U:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 5
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-array p1, v0, [I

    .line 6
    fill-array-data p1, :array_1

    aput v2, v1, v3

    .line 7
    monitor-enter p0

    .line 8
    :try_start_1
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->c:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 9
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->d:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, v0, p1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 10
    monitor-exit p0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x20
        0x0
    .end array-data
.end method

.method public G(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->G(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x3

    const/high16 v2, 0x10000

    const/4 v3, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 4
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    .line 5
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v0, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lo1/h0;->v(I)V

    const p1, 0x10010

    .line 6
    sget v0, Lmodule/sound/C32107S;->n2:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->g0(II)V

    const p1, 0x20010

    .line 7
    sget v0, Lmodule/sound/C32107S;->n2:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->g0(II)V

    const p1, 0x10020

    const/16 v0, 0xc8

    .line 8
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->g0(II)V

    const p1, 0x20020

    .line 9
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->g0(II)V

    goto/16 :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 11
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 12
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 13
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 14
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 15
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->b2(Z)V

    .line 16
    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->C0(II)V

    const/high16 p1, 0x20000

    .line 17
    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->C0(II)V

    .line 18
    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->D0(II)V

    .line 19
    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->D0(II)V

    goto/16 :goto_0

    .line 20
    :cond_2
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->d:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 21
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 22
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->g:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 23
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->e:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 24
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->K:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 25
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->l1(Z)V

    const p1, 0x11000

    const/16 v1, 0x28

    .line 26
    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j1(II)V

    const p1, 0x12000

    const/16 v1, 0x14

    .line 27
    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j1(II)V

    const p1, 0x21000

    .line 28
    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j1(II)V

    const p1, 0x22000

    .line 29
    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->j1(II)V

    .line 30
    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->j1(II)V

    .line 31
    iput-boolean v0, p0, Lmodule/sound/C32107S;->e2:Z

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 32
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->j([I)V

    .line 33
    invoke-virtual {p0, v2, v1}, Lmodule/sound/C32107S;->a1(II)V

    .line 34
    iput-boolean v3, p0, Lmodule/sound/C32107S;->e2:Z

    .line 35
    iput v3, p0, Lmodule/sound/AudioDevice;->z:I

    .line 36
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->g2(Z)V

    .line 37
    sget p1, Ly0/f;->W0:I

    const-string v0, "ro.fyt.subwoof"

    invoke-static {v0, p1}, La/i;->k(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ly0/h;->n0(I)V

    .line 38
    sget-object p1, Lmodule/sound/C32107S$REG;->B:Lmodule/sound/C32107S$REG;

    sget v0, Lmodule/sound/C32107S;->p2:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->i2(Lmodule/sound/C32107S$REG;I)V

    .line 39
    sget-object p1, Lmodule/sound/C32107S$REG;->A:Lmodule/sound/C32107S$REG;

    sget v0, Lmodule/sound/C32107S;->o2:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->i2(Lmodule/sound/C32107S$REG;I)V

    .line 40
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    goto :goto_0

    .line 41
    :cond_3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->D:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 42
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->E:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 43
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->a:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    .line 44
    iget-object p1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->w:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {p1, v1}, Lo1/h0;->v(I)V

    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lmodule/sound/AudioDevice;->k:I

    .line 46
    sget-object p1, Lmodule/sound/C32107S$EQType;->c:Lmodule/sound/C32107S$EQType;

    iget p1, p1, Lmodule/sound/C32107S$EQType;->a:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->T0(I)V

    .line 47
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->C()V

    .line 48
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n0()V

    .line 49
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->h(I)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x8
        0x8
    .end array-data
.end method

.method public final G1(Z)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    .line 3
    iget-boolean v2, p0, Lmodule/sound/C32107S;->i2:Z

    const/16 v3, 0x80

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    aput v3, v1, v5

    goto :goto_0

    :cond_0
    aput v4, v1, v5

    .line 4
    :goto_0
    monitor-enter p0

    .line 5
    :try_start_0
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->c:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 6
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->d:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    if-eqz p1, :cond_2

    aput v3, v1, v5

    goto :goto_1

    :cond_2
    aput v4, v1, v5

    .line 8
    :goto_1
    monitor-enter p0

    .line 9
    :try_start_1
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->T:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    if-eqz p1, :cond_3

    aput v4, v1, v5

    goto :goto_2

    :cond_3
    aput v3, v1, v5

    .line 10
    :goto_2
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->U:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 11
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x20
        0x0
    .end array-data
.end method

.method public H1(Z)V
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    const p1, 0x11000

    .line 2
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v1, v1, v5

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j2(II)V

    const p1, 0x12000

    .line 3
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v1, v1, v4

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j2(II)V

    const p1, 0x21000

    .line 4
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v1, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j2(II)V

    const p1, 0x22000

    .line 5
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v1, v1, v2

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->j2(II)V

    const/high16 p1, 0x10000

    .line 6
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v0, v1, v0

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->j2(II)V

    goto :goto_0

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->I:Lmodule/sound/C32107S$REG_ADI;

    iget v0, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, v0, v5, v1}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 9
    iget v0, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, v0, v4, v1}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 10
    iget v0, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, v0, v3, v1}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 11
    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v2, v1}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 12
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 13
    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
    .end array-data
.end method

.method public I1([II)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lmodule/sound/C32107S;->U1(I)[I

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final J1(II)Z
    .locals 9

    if-gez p1, :cond_0

    .line 1
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio initialization("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") failed! !"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v5, 0x23

    const/high16 v6, -0x10000

    const/16 v7, 0x3c

    const v8, 0x7fffff00

    const-string v2, "Audio Init"

    invoke-virtual/range {v0 .. v8}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    :cond_0
    if-ltz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public K1(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->k:Lmodule/sound/C32107S$REG;

    iget v1, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->d2(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    or-int/lit16 p1, v1, 0x80

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v1, 0x7f

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public L(II)V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    add-int/lit8 v3, v0, 0x2

    if-gt v2, v3, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v1, v0

    add-int/lit8 v2, v0, 0x1

    .line 4
    aget v2, v1, v2

    .line 5
    iget-object v4, p0, Lmodule/sound/C32107S;->R0:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    aget v0, v1, v0

    int-to-double v6, v0

    aget v0, v1, v3

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->T1(I)D

    move-result-wide v8

    iget-object v0, p0, Lmodule/sound/C32107S;->R0:[I

    aget v10, v0, v2

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lmodule/sound/C32107S;->N1(IDDI)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->L(II)V

    .line 7
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    return-void
.end method

.method public varargs L1(I[I)V
    .locals 9

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2
    aget v1, p2, v0

    iget-object v2, p0, Lmodule/sound/C32107S;->R0:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3
    aget v1, p2, v1

    int-to-double v4, v1

    const/4 v1, 0x2

    aget p2, p2, v1

    invoke-virtual {p0, p2}, Lmodule/sound/C32107S;->T1(I)D

    move-result-wide v6

    iget-object p2, p0, Lmodule/sound/C32107S;->R0:[I

    aget v8, p2, v0

    move-object v2, p0

    move v3, p1

    invoke-virtual/range {v2 .. v8}, Lmodule/sound/C32107S;->N1(IDDI)V

    :cond_0
    return-void
.end method

.method public M(II)V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 2
    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v3, v2

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v2, v1

    .line 4
    aget v3, v2, v0

    int-to-double v6, v3

    add-int/lit8 v0, v0, 0x2

    aget v0, v2, v0

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->T1(I)D

    move-result-wide v8

    iget-object v0, p0, Lmodule/sound/C32107S;->R0:[I

    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    aget v1, v2, v1

    aget v10, v0, v1

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lmodule/sound/C32107S;->N1(IDDI)V

    .line 5
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->M(II)V

    .line 6
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    return-void
.end method

.method public M1([I)V
    .locals 7

    .line 1
    array-length v0, p1

    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    div-int/2addr v0, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [I

    .line 2
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    aget v5, p1, v5

    aput v5, v3, v1

    mul-int v5, v2, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget v5, p1, v5

    aput v5, v3, v6

    mul-int/2addr v4, v2

    const/4 v5, 0x2

    add-int/2addr v4, v5

    aget v4, p1, v4

    aput v4, v3, v5

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->L1(I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final N1(IDDI)V
    .locals 27

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-wide/from16 v2, p2

    move/from16 v4, p6

    const-wide v9, 0x401921fb54442d18L    # 6.283185307179586

    const-wide/high16 v11, 0x4044000000000000L    # 40.0

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    const/16 v5, 0xb

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    if-ge v0, v5, :cond_1

    int-to-double v6, v4

    div-double/2addr v6, v11

    .line 1
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v9, v2

    const-wide v11, 0x40e7700000000000L    # 48000.0

    div-double/2addr v9, v11

    .line 2
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 3
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v13, p4, v15

    div-double/2addr v9, v13

    mul-double/2addr v15, v11

    div-double v13, v9, v5

    add-double v19, v13, v17

    div-double v15, v15, v19

    const-wide/high16 v21, 0x4160000000000000L    # 8388608.0

    move-wide/from16 p4, v9

    mul-double v8, v15, v21

    double-to-int v8, v8

    sub-double v9, v17, v13

    neg-double v9, v9

    div-double v9, v9, v19

    mul-double v9, v9, v21

    double-to-int v9, v9

    move-wide/from16 v13, p4

    mul-double/2addr v5, v13

    add-double v13, v5, v17

    div-double v13, v13, v19

    mul-double v13, v13, v21

    double-to-int v10, v13

    const-wide/high16 v13, -0x4000000000000000L    # -2.0

    mul-double/2addr v11, v13

    div-double v11, v11, v19

    mul-double v11, v11, v21

    double-to-int v11, v11

    sub-double v17, v17, v5

    div-double v17, v17, v19

    mul-double v5, v17, v21

    double-to-int v5, v5

    if-nez v4, :cond_0

    const/high16 v10, 0x800000

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    move v6, v8

    move v8, v11

    .line 4
    :goto_0
    sget-object v11, Lmodule/sound/C32107S$REG_ADI;->b:Lmodule/sound/C32107S$REG_ADI;

    iget v11, v11, Lmodule/sound/C32107S$REG_ADI;->a:I

    mul-int/lit8 v12, v0, 0x5

    add-int/2addr v11, v12

    .line 5
    monitor-enter p0

    const/4 v12, 0x4

    :try_start_0
    new-array v13, v12, [I

    const/4 v12, 0x3

    .line 6
    invoke-static {v10, v12}, Lo1/s0;->c(II)I

    move-result v14

    const/4 v7, 0x0

    aput v14, v13, v7

    const/4 v12, 0x2

    invoke-static {v10, v12}, Lo1/s0;->c(II)I

    move-result v14

    const/4 v15, 0x1

    aput v14, v13, v15

    invoke-static {v10, v15}, Lo1/s0;->c(II)I

    move-result v14

    aput v14, v13, v12

    invoke-static {v10, v7}, Lo1/s0;->c(II)I

    move-result v10

    const/4 v12, 0x3

    aput v10, v13, v12

    .line 7
    invoke-virtual {v1, v11, v7, v13}, Lmodule/sound/C32107S;->D1(II[I)V

    const/4 v10, 0x4

    new-array v13, v10, [I

    .line 8
    invoke-static {v8, v12}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v13, v7

    const/4 v10, 0x2

    invoke-static {v8, v10}, Lo1/s0;->c(II)I

    move-result v12

    const/4 v14, 0x1

    aput v12, v13, v14

    invoke-static {v8, v14}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v13, v10

    invoke-static {v8, v7}, Lo1/s0;->c(II)I

    move-result v8

    const/4 v10, 0x3

    aput v8, v13, v10

    .line 9
    invoke-virtual {v1, v11, v14, v13}, Lmodule/sound/C32107S;->D1(II[I)V

    const/4 v8, 0x4

    new-array v12, v8, [I

    .line 10
    invoke-static {v5, v10}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v12, v7

    const/4 v8, 0x2

    invoke-static {v5, v8}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v12, v14

    invoke-static {v5, v14}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v12, v8

    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v5

    const/4 v10, 0x3

    aput v5, v12, v10

    .line 11
    invoke-virtual {v1, v11, v8, v12}, Lmodule/sound/C32107S;->D1(II[I)V

    const/4 v5, 0x4

    new-array v12, v5, [I

    .line 12
    invoke-static {v6, v10}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v12, v7

    invoke-static {v6, v8}, Lo1/s0;->c(II)I

    move-result v5

    const/4 v10, 0x1

    aput v5, v12, v10

    invoke-static {v6, v10}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v12, v8

    invoke-static {v6, v7}, Lo1/s0;->c(II)I

    move-result v5

    const/4 v6, 0x3

    aput v5, v12, v6

    .line 13
    invoke-virtual {v1, v11, v6, v12}, Lmodule/sound/C32107S;->D1(II[I)V

    const/4 v5, 0x4

    new-array v8, v5, [I

    .line 14
    invoke-static {v9, v6}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v8, v7

    const/4 v5, 0x2

    invoke-static {v9, v5}, Lo1/s0;->c(II)I

    move-result v6

    const/4 v10, 0x1

    aput v6, v8, v10

    invoke-static {v9, v10}, Lo1/s0;->c(II)I

    move-result v6

    aput v6, v8, v5

    invoke-static {v9, v7}, Lo1/s0;->c(II)I

    move-result v5

    const/4 v6, 0x3

    aput v5, v8, v6

    const/4 v5, 0x4

    .line 15
    invoke-virtual {v1, v11, v5, v8}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 16
    sget-object v5, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget v5, v5, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v6, v1, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {v1, v5, v6}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "C32107S"

    .line 18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " EQ Coef--> freq : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " gain : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index : "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    .line 19
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/16 v6, 0x1b

    if-lt v0, v6, :cond_2

    return-void

    .line 20
    :cond_2
    sget-object v7, Lmodule/sound/C32107S$b;->a:[I

    iget-object v8, v1, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    const/16 v8, 0x10

    const/4 v15, 0x1

    if-eq v7, v15, :cond_4

    const/4 v15, 0x2

    if-eq v7, v15, :cond_3

    move/from16 v22, v0

    goto :goto_2

    :cond_3
    if-lt v0, v5, :cond_5

    if-ge v0, v6, :cond_5

    add-int/lit8 v6, v0, -0xb

    or-int/lit8 v6, v6, 0x20

    goto :goto_1

    :cond_4
    if-ltz v0, :cond_5

    if-ge v0, v8, :cond_5

    or-int/lit8 v6, v0, 0x20

    :goto_1
    move/from16 v22, v6

    goto :goto_2

    :cond_5
    const/16 v22, -0x1

    :goto_2
    if-gez v22, :cond_6

    return-void

    :cond_6
    int-to-double v6, v4

    div-double/2addr v6, v11

    .line 21
    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 22
    invoke-static/range {p6 .. p6}, Ljava/lang/Math;->abs(I)I

    move-result v15

    move-wide/from16 v25, v6

    int-to-double v5, v15

    div-double/2addr v5, v11

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v9, v2

    const-wide v11, 0x40e7700000000000L    # 48000.0

    div-double/2addr v9, v11

    .line 23
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    .line 24
    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v19, p4, v13

    div-double v19, v19, v5

    div-double v9, v9, v19

    mul-double v5, v11, v13

    div-double v13, v9, v25

    add-double v19, v13, v17

    div-double v5, v5, v19

    const-wide/high16 v23, 0x41a0000000000000L    # 1.34217728E8

    mul-double v5, v5, v23

    double-to-int v5, v5

    sub-double v6, v17, v13

    neg-double v6, v6

    div-double v6, v6, v19

    mul-double v6, v6, v23

    double-to-int v6, v6

    mul-double v9, v9, v25

    add-double v13, v9, v17

    div-double v13, v13, v19

    mul-double v13, v13, v23

    double-to-int v7, v13

    const-wide/high16 v13, -0x4000000000000000L    # -2.0

    mul-double/2addr v11, v13

    div-double v11, v11, v19

    mul-double v11, v11, v23

    double-to-int v11, v11

    sub-double v17, v17, v9

    div-double v17, v17, v19

    mul-double v9, v17, v23

    double-to-int v9, v9

    const-string v10, "C32107S"

    .line 25
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "11 EQ Coef--> freq : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " gain : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " index : "

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    sget-object v0, Lmodule/sound/C32107S$REG;->Y:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    aput v22, v3, v4

    invoke-virtual {v1, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 27
    sget-object v0, Lmodule/sound/C32107S$REG;->Z:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/16 v3, 0x14

    new-array v3, v3, [I

    const/4 v10, 0x3

    .line 28
    invoke-static {v7, v10}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v3, v4

    const/4 v12, 0x2

    invoke-static {v7, v12}, Lo1/s0;->c(II)I

    move-result v13

    aput v13, v3, v2

    invoke-static {v7, v2}, Lo1/s0;->c(II)I

    move-result v13

    aput v13, v3, v12

    invoke-static {v7, v4}, Lo1/s0;->c(II)I

    move-result v7

    aput v7, v3, v10

    .line 29
    invoke-static {v11, v10}, Lo1/s0;->c(II)I

    move-result v7

    const/4 v10, 0x4

    aput v7, v3, v10

    invoke-static {v11, v12}, Lo1/s0;->c(II)I

    move-result v7

    const/4 v10, 0x5

    aput v7, v3, v10

    const/4 v7, 0x6

    invoke-static {v11, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v7

    const/4 v2, 0x7

    invoke-static {v11, v4}, Lo1/s0;->c(II)I

    move-result v7

    aput v7, v3, v2

    const/16 v2, 0x8

    const/4 v7, 0x3

    .line 30
    invoke-static {v9, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v2

    const/16 v2, 0x9

    const/4 v10, 0x2

    invoke-static {v9, v10}, Lo1/s0;->c(II)I

    move-result v11

    aput v11, v3, v2

    const/16 v2, 0xa

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lo1/s0;->c(II)I

    move-result v12

    aput v12, v3, v2

    invoke-static {v9, v4}, Lo1/s0;->c(II)I

    move-result v2

    const/16 v4, 0xb

    aput v2, v3, v4

    const/16 v2, 0xc

    .line 31
    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0xd

    invoke-static {v5, v10}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0xe

    invoke-static {v5, v11}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0xf

    const/4 v4, 0x0

    invoke-static {v5, v4}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v3, v2

    .line 32
    invoke-static {v6, v7}, Lo1/s0;->c(II)I

    move-result v2

    aput v2, v3, v8

    const/16 v2, 0x11

    invoke-static {v6, v10}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v3, v2

    const/16 v2, 0x12

    invoke-static {v6, v11}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v3, v2

    const/16 v2, 0x13

    invoke-static {v6, v4}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    .line 33
    invoke-virtual {v1, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public O(II)V
    .locals 11

    .line 1
    iget v0, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, p1

    add-int/lit8 v1, v0, 0x2

    .line 2
    iget-object v2, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v3, v2

    if-gt v3, v1, :cond_0

    return-void

    .line 3
    :cond_0
    aput p2, v2, v1

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget v3, v2, v3

    .line 5
    iget-object v4, p0, Lmodule/sound/C32107S;->R0:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    aget v0, v2, v0

    int-to-double v6, v0

    aget v0, v2, v1

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->T1(I)D

    move-result-wide v8

    iget-object v0, p0, Lmodule/sound/C32107S;->R0:[I

    aget v10, v0, v3

    move-object v4, p0

    move v5, p1

    invoke-virtual/range {v4 .. v10}, Lmodule/sound/C32107S;->N1(IDDI)V

    .line 6
    :cond_1
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->O(II)V

    .line 7
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    return-void
.end method

.method public O1()V
    .locals 7

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->f:Lmodule/sound/C32107S$REG;

    iget v1, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->d2(I)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    .line 2
    sget v3, Lmodule/sound/C32107S;->n2:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v6, 0x2

    aput v3, v2, v6

    const/4 v6, 0x3

    aput v3, v2, v6

    .line 3
    iget v3, p0, Lmodule/sound/AudioDevice;->k:I

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lmodule/sound/C32107S;->P1:[I

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_2

    :cond_1
    if-nez v2, :cond_4

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_4

    .line 4
    :cond_2
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v5, [I

    if-eqz v2, :cond_3

    or-int/lit16 v1, v1, 0x80

    goto :goto_1

    :cond_3
    and-int/lit8 v1, v1, 0x7f

    :goto_1
    aput v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    :cond_4
    return-void
.end method

.method public P1(Lmodule/sound/C32107S$EQType;)V
    .locals 4

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1
    sget-object v1, Lmodule/sound/C32107S$REG;->u:Lmodule/sound/C32107S$REG;

    iget v2, v1, Lmodule/sound/C32107S$REG;->a:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lmodule/sound/C32107S;->d2(I)I

    move-result v2

    .line 2
    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    add-int/2addr v1, v0

    const/4 v3, 0x1

    new-array v3, v3, [I

    and-int/lit16 v2, v2, 0xbf

    aput v2, v3, p1

    invoke-virtual {p0, v1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Q1(III)Z
    .locals 7

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 1
    iget-object v1, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v2, v1, p2

    rsub-int/lit8 v3, p3, 0x28

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    .line 2
    aput v3, v1, p2

    .line 3
    iget-object v1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v2, Lmodule/sound/AudioDevice$STORE;->K:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v5, p0, Lmodule/sound/C32107S;->Q1:[I

    invoke-virtual {v1, v3, v5}, Lo1/h0;->r(I[I)V

    .line 4
    iget-object v1, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lo1/h0;->e(I)V

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "C32107S"

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fieldToSpeaker index: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " gain: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " reg: "

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "%04X"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {p2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object p2, p0, Lmodule/sound/C32107S;->E1:[[I

    aget-object p2, p2, p3

    invoke-virtual {p0, p1, v0, p2}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 8
    iget-object p2, p0, Lmodule/sound/C32107S;->F1:[I

    invoke-virtual {p0, p1, v4, p2}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 9
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p2, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 10
    monitor-exit p0

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_1
    return v0
.end method

.method public R0(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->R0(Z)V

    if-nez p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lmodule/sound/C32107S;->h2:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lmodule/sound/C32107S;->h2:Z

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->j([I)V

    .line 5
    iput p1, p0, Lmodule/sound/C32107S;->Z1:I

    :cond_0
    return-void
.end method

.method public R1()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->S1(I)I

    move-result v0

    .line 3
    sget-object v1, Lmodule/sound/C32107S$REG;->W:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lmodule/sound/C32107S;->N0:[I

    aget v0, v4, v0

    aput v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    :cond_0
    return-void
.end method

.method public S1(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    if-eqz v0, :cond_1

    .line 2
    iget p1, p0, Lmodule/sound/AudioDevice;->g:I

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :cond_1
    :goto_0
    return p1
.end method

.method public T0(I)V
    .locals 4

    .line 1
    sget-object v0, Lmodule/sound/C32107S$EQType;->b:Lmodule/sound/C32107S$EQType;

    iget v1, v0, Lmodule/sound/C32107S$EQType;->a:I

    if-ne p1, v1, :cond_0

    move-object v1, v0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Lmodule/sound/C32107S$EQType;->c:Lmodule/sound/C32107S$EQType;

    iget v2, v1, Lmodule/sound/C32107S$EQType;->a:I

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    .line 3
    iget-object v2, p0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    if-eq v1, v2, :cond_3

    .line 4
    iput-object v1, p0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    if-ne v1, v0, :cond_2

    const/16 v0, 0x10

    goto :goto_1

    :cond_2
    const/16 v0, 0x1b

    .line 5
    :goto_1
    iput v0, p0, Lmodule/sound/AudioDevice;->j:I

    .line 6
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    .line 7
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->n0()V

    .line 8
    iget v0, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->U1(I)[I

    move-result-object v0

    .line 9
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v1, p0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->P1(Lmodule/sound/C32107S$EQType;)V

    .line 11
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->M1([I)V

    .line 12
    :cond_3
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->T0(I)V

    return-void
.end method

.method public T1(I)D
    .locals 4

    int-to-double v0, p1

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public U(ILy/b;)Z
    .locals 11

    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    const v4, 0x22000

    const v5, 0x21000

    const v6, 0x12000

    const v7, 0x11000

    const/high16 v8, 0x20000

    const/4 v9, 0x3

    const/high16 v10, 0x10000

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_4

    :pswitch_0
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 1
    iget v4, p0, Lmodule/sound/C32107S;->f2:I

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const/16 v1, 0x10

    aput v1, v0, v2

    .line 2
    iget v1, p0, Lmodule/sound/C32107S;->g2:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_1
    new-array v0, v3, [I

    .line 3
    iget-boolean v1, p0, Lmodule/sound/C32107S;->e2:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_2
    new-array v0, v1, [I

    aput v3, v0, v2

    .line 4
    iget-object v4, p0, Lmodule/sound/C32107S;->U1:[I

    aget v4, v4, v3

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    aput v1, v0, v2

    .line 5
    iget-object v1, p0, Lmodule/sound/C32107S;->V1:[I

    aget v1, v1, v3

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_3
    new-array v8, v1, [I

    aput v7, v8, v2

    .line 6
    iget-object v7, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v7, v7, v2

    aput v7, v8, v3

    invoke-virtual {p0, p2, p1, v8}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v7, v1, [I

    aput v6, v7, v2

    .line 7
    iget-object v6, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v6, v6, v3

    aput v6, v7, v3

    invoke-virtual {p0, p2, p1, v7}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v6, v1, [I

    aput v5, v6, v2

    .line 8
    iget-object v5, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v5, v5, v1

    aput v5, v6, v3

    invoke-virtual {p0, p2, p1, v6}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 9
    iget-object v4, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v4, v4, v9

    aput v4, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v1, v1, [I

    aput v10, v1, v2

    .line 10
    iget-object v2, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v0, v2, v0

    aput v0, v1, v3

    invoke-virtual {p0, p2, p1, v1}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_4
    new-array v0, v3, [I

    .line 11
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->A:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_5
    new-array v0, v3, [I

    .line 12
    iget-object v1, p0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    iget v1, v1, Lmodule/sound/C32107S$EQType;->a:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_6
    new-array v0, v9, [I

    aput v10, v0, v2

    .line 13
    iget-object v4, p0, Lmodule/sound/C32107S;->N1:[I

    aget v5, v4, v2

    aput v5, v0, v3

    aget v4, v4, v3

    aput v4, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v9, [I

    aput v8, v0, v2

    .line 14
    iget-object v4, p0, Lmodule/sound/C32107S;->O1:[I

    aget v2, v4, v2

    aput v2, v0, v3

    aget v2, v4, v3

    aput v2, v0, v1

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_7
    new-array v0, v1, [I

    aput v3, v0, v2

    .line 15
    iget-object v4, p0, Lmodule/sound/C32107S;->U1:[I

    aget v4, v4, v2

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    aput v1, v0, v2

    .line 16
    iget-object v1, p0, Lmodule/sound/C32107S;->V1:[I

    aget v1, v1, v2

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_8
    new-array v8, v1, [I

    aput v7, v8, v2

    .line 17
    iget-object v7, p0, Lmodule/sound/C32107S;->T1:[I

    aget v7, v7, v2

    aput v7, v8, v3

    invoke-virtual {p0, p2, p1, v8}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v7, v1, [I

    aput v6, v7, v2

    .line 18
    iget-object v6, p0, Lmodule/sound/C32107S;->T1:[I

    aget v6, v6, v3

    aput v6, v7, v3

    invoke-virtual {p0, p2, p1, v7}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v6, v1, [I

    aput v5, v6, v2

    .line 19
    iget-object v5, p0, Lmodule/sound/C32107S;->T1:[I

    aget v5, v5, v1

    aput v5, v6, v3

    invoke-virtual {p0, p2, p1, v6}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 20
    iget-object v4, p0, Lmodule/sound/C32107S;->T1:[I

    aget v4, v4, v9

    aput v4, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v1, v1, [I

    aput v10, v1, v2

    .line 21
    iget-object v2, p0, Lmodule/sound/C32107S;->T1:[I

    aget v0, v2, v0

    aput v0, v1, v3

    invoke-virtual {p0, p2, p1, v1}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_9
    new-array v0, v3, [I

    .line 22
    iget v1, p0, Lmodule/sound/C32107S;->I1:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_a
    new-array v0, v3, [I

    .line 23
    iget-boolean v1, p0, Lmodule/sound/C32107S;->L1:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_b
    new-array v0, v1, [I

    const v4, 0x10010

    aput v4, v0, v2

    .line 24
    iget-object v4, p0, Lmodule/sound/C32107S;->P1:[I

    aget v4, v4, v2

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x10020

    aput v4, v0, v2

    .line 25
    iget-object v4, p0, Lmodule/sound/C32107S;->P1:[I

    aget v4, v4, v3

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v4, 0x20010

    aput v4, v0, v2

    .line 26
    iget-object v4, p0, Lmodule/sound/C32107S;->P1:[I

    aget v4, v4, v1

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const v1, 0x20020

    aput v1, v0, v2

    .line 27
    iget-object v1, p0, Lmodule/sound/C32107S;->P1:[I

    aget v1, v1, v9

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_c
    new-array v0, v1, [I

    aput v10, v0, v2

    .line 28
    iget-object v4, p0, Lmodule/sound/C32107S;->N1:[I

    aget v4, v4, v2

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    aput v8, v0, v2

    .line 29
    iget-object v1, p0, Lmodule/sound/C32107S;->O1:[I

    aget v1, v1, v2

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_d
    new-array v0, v1, [I

    aput v10, v0, v2

    .line 30
    iget-object v4, p0, Lmodule/sound/C32107S;->N1:[I

    aget v4, v4, v3

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    aput v8, v0, v2

    .line 31
    iget-object v1, p0, Lmodule/sound/C32107S;->O1:[I

    aget v1, v1, v3

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_e
    new-array v0, v3, [I

    .line 32
    iget-boolean v1, p0, Lmodule/sound/C32107S;->M1:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_f
    new-array v0, v1, [I

    aput v2, v0, v2

    .line 33
    iget v4, p0, Lmodule/sound/C32107S;->W1:I

    aput v4, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    new-array v0, v1, [I

    const/16 v1, 0x100

    aput v1, v0, v2

    .line 34
    iget v1, p0, Lmodule/sound/C32107S;->X1:I

    aput v1, v0, v3

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :pswitch_10
    new-array v0, v3, [I

    .line 35
    iget v1, p0, Lmodule/sound/AudioDevice;->z:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto/16 :goto_3

    :cond_0
    new-array v0, v3, [I

    .line 36
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->C:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    :cond_1
    new-array v0, v3, [I

    .line 37
    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->B:Z

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    .line 38
    :cond_2
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 39
    :goto_0
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 40
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->y0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 41
    :cond_3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 42
    :goto_1
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 43
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    aget v6, v0, v6

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-array v0, v3, [I

    .line 44
    iget v1, p0, Lmodule/sound/AudioDevice;->k:I

    aput v1, v0, v2

    invoke-virtual {p0, p2, p1, v0}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    goto :goto_3

    .line 45
    :cond_5
    iget-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    move v4, v2

    .line 46
    :goto_2
    iget v5, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v4, v5, :cond_6

    new-array v5, v1, [I

    aput v4, v5, v2

    .line 47
    iget v6, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    aget v6, v0, v6

    invoke-virtual {p0, v4}, Lmodule/sound/AudioDevice;->x0(I)I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v5, v3

    invoke-virtual {p0, p2, p1, v5}, Lmodule/sound/AudioDevice;->r1(Ly/b;I[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    move v2, v3

    :goto_4
    if-eqz v2, :cond_7

    goto :goto_5

    .line 48
    :cond_7
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->U(ILy/b;)Z

    move-result v2

    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x35
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public U1(I)[I
    .locals 5

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    sget-object v1, Lmodule/sound/C32107S$EQType;->b:Lmodule/sound/C32107S$EQType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->X(I)[I

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lmodule/sound/C32107S;->T0:[I

    :cond_1
    if-eqz p1, :cond_3

    .line 4
    array-length v2, p1

    .line 5
    iget v3, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v4, v0, v3

    if-ne v2, v4, :cond_2

    .line 6
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_1

    :cond_2
    mul-int v4, v0, v3

    if-ge v2, v4, :cond_3

    mul-int/2addr v3, v0

    .line 7
    new-array v1, v3, [I

    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v4

    sub-int/2addr v0, v2

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_1
    return-object v1
.end method

.method public V1(II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    const-string v3, "C32107S"

    .line 1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " 32107 HpfCoefSet selector : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " set freq : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v2, :cond_4

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v0

    mul-double/2addr v6, v4

    const-wide v4, 0x40e7700000000000L    # 48000.0

    div-double/2addr v6, v4

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 4
    iget v8, v1, Lmodule/sound/C32107S;->g2:I

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 5
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double v12, v9, v12

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    :goto_0
    div-double/2addr v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v14, v4, v12

    div-double v16, v14, v9

    add-double v18, v6, v12

    div-double v16, v16, v18

    const-wide/high16 v20, 0x4160000000000000L    # 8388608.0

    mul-double v11, v16, v20

    double-to-int v11, v11

    neg-double v12, v14

    div-double v12, v12, v18

    mul-double v12, v12, v20

    double-to-int v12, v12

    mul-double/2addr v4, v9

    div-double v4, v4, v18

    mul-double v4, v4, v20

    double-to-int v4, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v9

    div-double v6, v6, v18

    mul-double v6, v6, v20

    double-to-int v5, v6

    .line 7
    sget-object v6, Lmodule/sound/C32107S$HPF;->b:Lmodule/sound/C32107S$HPF;

    iget v6, v6, Lmodule/sound/C32107S$HPF;->a:I

    if-ne v2, v6, :cond_2

    .line 8
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->F:Lmodule/sound/C32107S$REG_ADI;

    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    goto :goto_1

    .line 9
    :cond_2
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->G:Lmodule/sound/C32107S$REG_ADI;

    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    :goto_1
    const/16 v6, 0x14

    const/4 v7, 0x0

    if-ne v0, v6, :cond_3

    const/high16 v11, 0x800000

    move v0, v7

    move v4, v0

    move v5, v4

    move v12, v5

    goto :goto_2

    :cond_3
    move v0, v11

    .line 10
    :goto_2
    monitor-enter p0

    const/4 v6, 0x4

    :try_start_0
    new-array v9, v6, [I

    .line 11
    invoke-static {v11, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v7

    const/4 v8, 0x2

    invoke-static {v11, v8}, Lo1/s0;->c(II)I

    move-result v10

    const/4 v13, 0x1

    aput v10, v9, v13

    invoke-static {v11, v13}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v8

    invoke-static {v11, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v3

    .line 12
    invoke-virtual {v1, v2, v7, v9}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v9, v6, [I

    .line 13
    invoke-static {v12, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v7

    const/4 v8, 0x2

    invoke-static {v12, v8}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v13

    invoke-static {v12, v13}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v8

    invoke-static {v12, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v3

    .line 14
    invoke-virtual {v1, v2, v13, v9}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v9, v6, [I

    .line 15
    invoke-static {v0, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v7

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v13

    invoke-static {v0, v13}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v8

    invoke-static {v0, v7}, Lo1/s0;->c(II)I

    move-result v0

    aput v0, v9, v3

    .line 16
    invoke-virtual {v1, v2, v8, v9}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v0, v6, [I

    .line 17
    invoke-static {v4, v3}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v0, v7

    invoke-static {v4, v8}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v0, v13

    invoke-static {v4, v13}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v0, v8

    invoke-static {v4, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v3

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v0, v6, [I

    .line 19
    invoke-static {v5, v3}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v7

    const/4 v4, 0x2

    invoke-static {v5, v4}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v0, v13

    invoke-static {v5, v13}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v0, v4

    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v3

    .line 20
    invoke-virtual {v1, v2, v6, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 21
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v2, v1, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {v1, v0, v2}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method public W0()V
    .locals 10

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->W0()V

    .line 2
    iget-object v0, p0, Lmodule/sound/C32107S;->c1:[I

    const/16 v1, 0x10

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v2, 0x7f030025

    invoke-static {v0, v2, v1}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107S;->c1:[I

    .line 4
    :cond_0
    iget-object v0, p0, Lmodule/sound/C32107S;->d1:[I

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    const v2, 0x7f030024

    invoke-static {v0, v2, v1}, Lo1/s0;->A(Landroid/content/Context;II)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107S;->d1:[I

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_2
    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 6
    iput-boolean v0, p0, Lmodule/sound/C32107S;->d2:Z

    .line 7
    sget-object v4, Lmodule/sound/C32107S$REG;->d:Lmodule/sound/C32107S$REG;

    iget v4, v4, Lmodule/sound/C32107S$REG;->a:I

    new-array v5, v3, [I

    const/16 v6, 0x81

    aput v6, v5, v0

    invoke-virtual {p0, v4, v5}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 8
    iget-object v4, p0, Lmodule/sound/C32107S;->K0:[I

    array-length v4, v4

    const/4 v5, 0x2

    .line 9
    div-int/2addr v4, v5

    move v6, v0

    :goto_0
    if-ge v6, v4, :cond_5

    .line 10
    iget-object v7, p0, Lmodule/sound/C32107S;->K0:[I

    mul-int/lit8 v8, v6, 0x2

    aget v9, v7, v8

    add-int/2addr v8, v3

    .line 11
    aget v7, v7, v8

    const v8, 0xffff

    if-ne v9, v8, :cond_3

    const/16 v8, 0xff

    if-eq v7, v8, :cond_4

    :cond_3
    new-array v2, v3, [I

    aput v7, v2, v0

    .line 12
    invoke-virtual {p0, v9, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    move-result v2

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    const/16 v4, 0x32

    if-gez v2, :cond_6

    if-ge v1, v4, :cond_6

    .line 13
    invoke-virtual {p0}, Lmodule/sound/C32107S;->e2()V

    goto/16 :goto_8

    .line 14
    :cond_6
    sget v2, Lmodule/sound/C32107S;->n2:I

    sget-object v6, Lmodule/sound/C32107S$HPF;->b:Lmodule/sound/C32107S$HPF;

    iget v6, v6, Lmodule/sound/C32107S$HPF;->a:I

    const-wide v7, 0x3fe6666666666666L    # 0.7

    invoke-virtual {p0, v2, v6, v7, v8}, Lmodule/sound/C32107S;->W1(IID)V

    .line 15
    sget v2, Lmodule/sound/C32107S;->n2:I

    sget-object v6, Lmodule/sound/C32107S$HPF;->c:Lmodule/sound/C32107S$HPF;

    iget v6, v6, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v2, v6, v7, v8}, Lmodule/sound/C32107S;->W1(IID)V

    .line 16
    sget v2, Lmodule/sound/C32107S;->n2:I

    sget-object v6, Lmodule/sound/C32107S$HPF;->d:Lmodule/sound/C32107S$HPF;

    iget v6, v6, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v2, v6, v7, v8}, Lmodule/sound/C32107S;->W1(IID)V

    .line 17
    sget v2, Lmodule/sound/C32107S;->n2:I

    sget-object v6, Lmodule/sound/C32107S$HPF;->e:Lmodule/sound/C32107S$HPF;

    iget v6, v6, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v2, v6, v7, v8}, Lmodule/sound/C32107S;->W1(IID)V

    .line 18
    sget-object v2, Lmodule/sound/C32107S$IIR;->b:Lmodule/sound/C32107S$IIR;

    iget v6, p0, Lmodule/sound/C32107S;->R1:I

    invoke-virtual {p0, v2, v6}, Lmodule/sound/C32107S;->l2(Lmodule/sound/C32107S$IIR;I)V

    .line 19
    sget-object v2, Lmodule/sound/C32107S$IIR;->c:Lmodule/sound/C32107S$IIR;

    iget v6, p0, Lmodule/sound/C32107S;->S1:I

    invoke-virtual {p0, v2, v6}, Lmodule/sound/C32107S;->l2(Lmodule/sound/C32107S$IIR;I)V

    .line 20
    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->f:Z

    invoke-virtual {p0, v2}, Lmodule/sound/C32107S;->l(I)V

    const-wide/16 v6, 0x64

    .line 21
    invoke-static {v6, v7}, Lo1/s0;->C(J)V

    .line 22
    iput-boolean v3, p0, Lmodule/sound/C32107S;->d2:Z

    .line 23
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget v6, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v7, p0, Lmodule/sound/C32107S;->e1:[I

    invoke-virtual {p0, v6, v7}, Lmodule/sound/C32107S;->o2(I[I)I

    move-result v6

    iget-object v7, p0, Lmodule/sound/C32107S;->e1:[I

    array-length v7, v7

    add-int/2addr v7, v5

    if-ne v6, v7, :cond_7

    move v6, v3

    goto :goto_2

    :cond_7
    move v6, v0

    :goto_2
    if-eqz v6, :cond_8

    .line 24
    sget-object v6, Lmodule/sound/C32107S$REG_ADI;->Y:Lmodule/sound/C32107S$REG_ADI;

    iget v6, v6, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v7, p0, Lmodule/sound/C32107S;->c1:[I

    invoke-virtual {p0, v6, v7}, Lmodule/sound/C32107S;->o2(I[I)I

    move-result v6

    iget-object v7, p0, Lmodule/sound/C32107S;->c1:[I

    array-length v7, v7

    add-int/2addr v7, v5

    if-ne v6, v7, :cond_8

    move v6, v3

    goto :goto_3

    :cond_8
    move v6, v0

    :goto_3
    if-eqz v6, :cond_9

    .line 25
    sget-object v6, Lmodule/sound/C32107S$REG_ADI;->Z:Lmodule/sound/C32107S$REG_ADI;

    iget v6, v6, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v7, p0, Lmodule/sound/C32107S;->d1:[I

    invoke-virtual {p0, v6, v7}, Lmodule/sound/C32107S;->o2(I[I)I

    move-result v6

    iget-object v7, p0, Lmodule/sound/C32107S;->d1:[I

    array-length v7, v7

    add-int/2addr v7, v5

    if-ne v6, v7, :cond_9

    move v6, v3

    goto :goto_4

    :cond_9
    move v6, v0

    :goto_4
    if-eqz v6, :cond_a

    .line 26
    iget v6, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v7, p0, Lmodule/sound/C32107S;->f1:[I

    invoke-virtual {p0, v6, v7}, Lmodule/sound/C32107S;->o2(I[I)I

    move-result v6

    iget-object v7, p0, Lmodule/sound/C32107S;->f1:[I

    array-length v7, v7

    add-int/2addr v7, v5

    if-ne v6, v7, :cond_a

    move v6, v3

    goto :goto_5

    :cond_a
    move v6, v0

    :goto_5
    if-eqz v6, :cond_b

    .line 27
    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v6, p0, Lmodule/sound/C32107S;->g1:[I

    invoke-virtual {p0, v2, v6}, Lmodule/sound/C32107S;->o2(I[I)I

    move-result v2

    iget-object v6, p0, Lmodule/sound/C32107S;->g1:[I

    array-length v6, v6

    add-int/2addr v6, v5

    if-ne v2, v6, :cond_b

    move v2, v3

    goto :goto_6

    :cond_b
    move v2, v0

    :goto_6
    if-eqz v2, :cond_c

    move v2, v3

    goto :goto_7

    :cond_c
    const/4 v2, -0x1

    :goto_7
    if-gez v2, :cond_d

    if-ge v1, v4, :cond_d

    .line 28
    invoke-virtual {p0}, Lmodule/sound/C32107S;->e2()V

    :cond_d
    :goto_8
    if-ge v1, v4, :cond_e

    if-ltz v2, :cond_2

    .line 29
    :cond_e
    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->J1(II)Z

    move-result v1

    if-nez v1, :cond_f

    return-void

    .line 30
    :cond_f
    iget v1, p0, Lmodule/sound/AudioDevice;->k:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->w0(I)V

    .line 31
    iget-object v1, p0, Lmodule/sound/C32107S;->P1:[I

    aget v1, v1, v0

    sget-object v2, Lmodule/sound/C32107S$HPF;->b:Lmodule/sound/C32107S$HPF;

    iget v2, v2, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107S;->V1(II)V

    .line 32
    iget-object v1, p0, Lmodule/sound/C32107S;->P1:[I

    aget v1, v1, v3

    mul-int/lit8 v1, v1, 0x64

    sget-object v2, Lmodule/sound/C32107S$HPF;->c:Lmodule/sound/C32107S$HPF;

    iget v2, v2, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107S;->Y1(II)V

    .line 33
    iget-object v1, p0, Lmodule/sound/C32107S;->P1:[I

    aget v1, v1, v5

    sget-object v2, Lmodule/sound/C32107S$HPF;->d:Lmodule/sound/C32107S$HPF;

    iget v2, v2, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107S;->V1(II)V

    .line 34
    iget-object v1, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-int/lit8 v1, v1, 0x64

    sget-object v4, Lmodule/sound/C32107S$HPF;->e:Lmodule/sound/C32107S$HPF;

    iget v4, v4, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v1, v4}, Lmodule/sound/C32107S;->Y1(II)V

    .line 35
    iget-object v1, p0, Lmodule/sound/C32107S;->N1:[I

    aget v4, v1, v0

    aget v1, v1, v3

    const/high16 v6, 0x10000

    invoke-virtual {p0, v6, v4, v1}, Lmodule/sound/C32107S;->B0(III)V

    const/high16 v1, 0x20000

    .line 36
    iget-object v4, p0, Lmodule/sound/C32107S;->O1:[I

    aget v7, v4, v0

    aget v4, v4, v3

    invoke-virtual {p0, v1, v7, v4}, Lmodule/sound/C32107S;->B0(III)V

    .line 37
    iget-boolean v1, p0, Lmodule/sound/C32107S;->L1:Z

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->l1(Z)V

    .line 38
    iget v1, p0, Lmodule/sound/C32107S;->I1:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->k1(I)V

    .line 39
    iget-boolean v1, p0, Lmodule/sound/C32107S;->L1:Z

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->H1(Z)V

    .line 40
    iget-object v1, p0, Lmodule/sound/C32107S;->U1:[I

    aget v1, v1, v0

    invoke-virtual {p0, v3, v1}, Lmodule/sound/C32107S;->i1(II)V

    .line 41
    iget-object v1, p0, Lmodule/sound/C32107S;->V1:[I

    aget v1, v1, v0

    invoke-virtual {p0, v5, v1}, Lmodule/sound/C32107S;->i1(II)V

    .line 42
    iget-object v1, p0, Lmodule/sound/C32107S;->V1:[I

    aget v1, v1, v3

    invoke-virtual {p0, v5, v1}, Lmodule/sound/C32107S;->h1(II)V

    .line 43
    sget-object v1, Lmodule/sound/C32107S$REG;->T:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v3, [I

    iget-object v7, p0, Lmodule/sound/C32107S;->P0:[I

    aget v7, v7, v0

    aput v7, v4, v0

    invoke-virtual {p0, v1, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 44
    sget-object v1, Lmodule/sound/C32107S$REG;->U:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v3, [I

    iget-object v7, p0, Lmodule/sound/C32107S;->P0:[I

    aget v7, v7, v0

    aput v7, v4, v0

    invoke-virtual {p0, v1, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 45
    sget-object v1, Lmodule/sound/C32107S$REG;->V:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v3, [I

    iget-object v7, p0, Lmodule/sound/C32107S;->P0:[I

    aget v7, v7, v0

    aput v7, v4, v0

    invoke-virtual {p0, v1, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 46
    sget-object v1, Lmodule/sound/C32107S$REG;->X:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v3, [I

    iget-object v7, p0, Lmodule/sound/C32107S;->P0:[I

    aget v7, v7, v0

    aput v7, v4, v0

    invoke-virtual {p0, v1, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    const v1, 0x11000

    .line 47
    iget-object v4, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v0, v4, v0

    invoke-virtual {p0, v1, v0}, Lmodule/sound/C32107S;->a1(II)V

    const v0, 0x12000

    .line 48
    iget-object v1, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->a1(II)V

    const v0, 0x21000

    .line 49
    iget-object v1, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v1, v1, v5

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->a1(II)V

    const v0, 0x22000

    .line 50
    iget-object v1, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->a1(II)V

    .line 51
    iget-object v0, p0, Lmodule/sound/C32107S;->Q1:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, v6, v0}, Lmodule/sound/C32107S;->a1(II)V

    .line 52
    sget v0, Lu0/b;->D:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->a(I)V

    .line 53
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->g2(Z)V

    .line 54
    iget v0, p0, Lmodule/sound/AudioDevice;->z:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->o(I)V

    .line 55
    sget-object v0, Lmodule/sound/C32107S$REG;->B:Lmodule/sound/C32107S$REG;

    iget v1, p0, Lmodule/sound/C32107S;->X1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->i2(Lmodule/sound/C32107S$REG;I)V

    .line 56
    sget-object v0, Lmodule/sound/C32107S$REG;->A:Lmodule/sound/C32107S$REG;

    iget v1, p0, Lmodule/sound/C32107S;->W1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->i2(Lmodule/sound/C32107S$REG;I)V

    .line 57
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->C:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->h2(Z)V

    .line 58
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    .line 59
    sget v0, Ly0/f;->C0:I

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->y1(I)V

    return-void
.end method

.method public W1(IID)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p2

    if-ltz v1, :cond_2

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x14

    move/from16 v4, p1

    if-gt v4, v3, :cond_1

    move v4, v3

    :cond_1
    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v7, v4

    mul-double/2addr v7, v5

    const-wide v4, 0x40e7700000000000L    # 48000.0

    div-double/2addr v7, v4

    .line 1
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 2
    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double v10, p3, v8

    div-double/2addr v6, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double v12, v4, v10

    div-double v14, v12, v8

    add-double v16, v6, v10

    div-double v14, v14, v16

    const-wide/high16 v18, 0x41a0000000000000L    # 1.34217728E8

    mul-double v14, v14, v18

    double-to-int v14, v14

    neg-double v12, v12

    div-double v12, v12, v16

    mul-double v12, v12, v18

    double-to-int v12, v12

    mul-double/2addr v4, v8

    div-double v4, v4, v16

    mul-double v4, v4, v18

    double-to-int v4, v4

    sub-double/2addr v6, v10

    div-double v6, v6, v16

    mul-double v6, v6, v18

    double-to-int v5, v6

    .line 3
    sget-object v6, Lmodule/sound/C32107S$REG;->a0:Lmodule/sound/C32107S$REG;

    iget v6, v6, Lmodule/sound/C32107S$REG;->a:I

    const/4 v7, 0x1

    new-array v8, v7, [I

    const/4 v9, 0x0

    aput v1, v8, v9

    invoke-virtual {v0, v6, v8}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 4
    sget-object v1, Lmodule/sound/C32107S$REG;->b0:Lmodule/sound/C32107S$REG;

    iget v1, v1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v3, [I

    .line 5
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v6

    aput v6, v3, v9

    const/4 v6, 0x2

    invoke-static {v14, v6}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v3, v7

    invoke-static {v14, v7}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v3, v6

    invoke-static {v14, v9}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v3, v2

    const/4 v8, 0x4

    .line 6
    invoke-static {v12, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/4 v8, 0x5

    invoke-static {v12, v6}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/4 v8, 0x6

    invoke-static {v12, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/4 v8, 0x7

    invoke-static {v12, v9}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0x8

    .line 7
    invoke-static {v14, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0x9

    invoke-static {v14, v6}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xa

    invoke-static {v14, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xb

    invoke-static {v14, v9}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xc

    .line 8
    invoke-static {v4, v2}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xd

    invoke-static {v4, v6}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xe

    invoke-static {v4, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v3, v8

    const/16 v8, 0xf

    invoke-static {v4, v9}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v8

    const/16 v4, 0x10

    .line 9
    invoke-static {v5, v2}, Lo1/s0;->c(II)I

    move-result v2

    aput v2, v3, v4

    const/16 v2, 0x11

    invoke-static {v5, v6}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0x12

    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    const/16 v2, 0x13

    invoke-static {v5, v9}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v3, v2

    .line 10
    invoke-virtual {v0, v1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs X0([I)V
    .locals 5

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x800

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    .line 2
    aget v4, p1, v3

    aput v4, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    const/16 v0, 0x801

    new-array v2, v1, [I

    .line 3
    aget p1, p1, v1

    aput p1, v2, v3

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public X1(I)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->a0:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public Y1(II)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    if-ltz v2, :cond_4

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "C32107S"

    .line 1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " 32107 lpfCoefSet selector : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " set freq : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v6, v0

    mul-double/2addr v6, v4

    const-wide v4, 0x40e7700000000000L    # 48000.0

    div-double/2addr v6, v4

    .line 2
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 3
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 4
    iget v8, v1, Lmodule/sound/C32107S;->f2:I

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    .line 5
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    div-double v12, v9, v12

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    :goto_0
    div-double/2addr v6, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v14, v12, v4

    div-double v16, v14, v9

    add-double v18, v6, v12

    div-double v16, v16, v18

    const-wide/high16 v20, 0x4160000000000000L    # 8388608.0

    mul-double v11, v16, v20

    double-to-int v11, v11

    div-double v14, v14, v18

    mul-double v14, v14, v20

    double-to-int v12, v14

    mul-double/2addr v4, v9

    div-double v4, v4, v18

    mul-double v4, v4, v20

    double-to-int v4, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v9

    div-double v6, v6, v18

    mul-double v6, v6, v20

    double-to-int v5, v6

    .line 7
    sget-object v6, Lmodule/sound/C32107S$HPF;->c:Lmodule/sound/C32107S$HPF;

    iget v6, v6, Lmodule/sound/C32107S$HPF;->a:I

    if-ne v2, v6, :cond_2

    .line 8
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->D:Lmodule/sound/C32107S$REG_ADI;

    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    goto :goto_1

    .line 9
    :cond_2
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->E:Lmodule/sound/C32107S$REG_ADI;

    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    :goto_1
    const/16 v6, 0x4e20

    const/4 v7, 0x0

    if-ne v0, v6, :cond_3

    const/high16 v11, 0x800000

    move v0, v7

    move v4, v0

    move v5, v4

    move v12, v5

    goto :goto_2

    :cond_3
    move v0, v11

    .line 10
    :goto_2
    monitor-enter p0

    const/4 v6, 0x4

    :try_start_0
    new-array v9, v6, [I

    .line 11
    invoke-static {v11, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v7

    const/4 v8, 0x2

    invoke-static {v11, v8}, Lo1/s0;->c(II)I

    move-result v10

    const/4 v13, 0x1

    aput v10, v9, v13

    invoke-static {v11, v13}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v8

    invoke-static {v11, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v3

    .line 12
    invoke-virtual {v1, v2, v7, v9}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v9, v6, [I

    .line 13
    invoke-static {v12, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v7

    const/4 v8, 0x2

    invoke-static {v12, v8}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v13

    invoke-static {v12, v13}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v8

    invoke-static {v12, v7}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v3

    .line 14
    invoke-virtual {v1, v2, v13, v9}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v9, v6, [I

    .line 15
    invoke-static {v0, v3}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v7

    const/4 v8, 0x2

    invoke-static {v0, v8}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v13

    invoke-static {v0, v13}, Lo1/s0;->c(II)I

    move-result v10

    aput v10, v9, v8

    invoke-static {v0, v7}, Lo1/s0;->c(II)I

    move-result v0

    aput v0, v9, v3

    .line 16
    invoke-virtual {v1, v2, v8, v9}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v0, v6, [I

    .line 17
    invoke-static {v4, v3}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v0, v7

    invoke-static {v4, v8}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v0, v13

    invoke-static {v4, v13}, Lo1/s0;->c(II)I

    move-result v9

    aput v9, v0, v8

    invoke-static {v4, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v3

    .line 18
    invoke-virtual {v1, v2, v3, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    new-array v0, v6, [I

    .line 19
    invoke-static {v5, v3}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v7

    const/4 v4, 0x2

    invoke-static {v5, v4}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v0, v13

    invoke-static {v5, v13}, Lo1/s0;->c(II)I

    move-result v8

    aput v8, v0, v4

    invoke-static {v5, v7}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v3

    .line 20
    invoke-virtual {v1, v2, v6, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 21
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v2, v1, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {v1, v0, v2}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 22
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_3
    return-void
.end method

.method public Z1(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->K1:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/C32107S;->K1:Z

    .line 3
    sget-object v0, Lmodule/sound/C32107S$REG;->i:Lmodule/sound/C32107S$REG;

    iget v1, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->d2(I)I

    move-result v1

    .line 4
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v3, v2, [I

    if-eqz p1, :cond_1

    or-int/lit8 v1, v1, 0x70

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v1, 0x8f

    :goto_0
    const/4 v4, 0x0

    aput v1, v3, v4

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 5
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->G1(Z)V

    .line 6
    invoke-virtual {p0}, Lmodule/sound/C32107S;->g1()Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    sget v0, Lu0/b;->D:I

    if-eqz p1, :cond_2

    .line 8
    iget v1, p0, Lmodule/sound/AudioDevice;->l:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->j0(I)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 9
    invoke-virtual {p0, v4}, Lmodule/sound/C32107S;->a(I)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->j0(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    .line 11
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->a(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(I)V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Landroid/media/AudioManager;

    sget v2, Lh0/c;->G:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move p1, v3

    .line 2
    :cond_0
    sget v2, Lu0/b;->E:I

    if-ltz v2, :cond_1

    move p1, v2

    .line 3
    :cond_1
    iput p1, p0, Lmodule/sound/AudioDevice;->l:I

    .line 4
    iget-object v2, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    and-int/lit8 v2, v2, 0xf

    if-gez v2, :cond_2

    .line 5
    sget-object v2, Lmodule/sound/C32107S$CHANNEL;->b:Lmodule/sound/C32107S$CHANNEL;

    iget v2, v2, Lmodule/sound/C32107S$CHANNEL;->a:I

    .line 6
    :cond_2
    sget-object v5, Lmodule/sound/C32107S$CHANNEL;->b:Lmodule/sound/C32107S$CHANNEL;

    iget v5, v5, Lmodule/sound/C32107S$CHANNEL;->a:I

    const/4 v6, 0x0

    if-ne v2, v5, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lmodule/sound/C32107S;->i2:Z

    .line 7
    sget-object v5, Ln0/j4;->d:Ln0/c4;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ln0/c4;->l3()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 8
    iput-boolean v6, p0, Lmodule/sound/C32107S;->i2:Z

    move v5, v4

    goto :goto_1

    :cond_4
    move v5, v6

    :goto_1
    if-nez v5, :cond_5

    if-ne p1, v4, :cond_5

    .line 9
    sget-object v7, Lg/e;->a:Lg/g;

    if-eqz v7, :cond_5

    check-cast v7, Lchip/Chip;

    .line 10
    invoke-virtual {v7}, Lchip/Chip;->M()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 11
    iput-boolean v6, p0, Lmodule/sound/C32107S;->i2:Z

    move v5, v4

    .line 12
    :cond_5
    iget-boolean v7, p0, Lmodule/sound/AudioDevice;->w:Z

    if-eqz v7, :cond_9

    .line 13
    iget-boolean v7, p0, Lmodule/sound/C32107S;->i2:Z

    if-ne p1, v3, :cond_6

    .line 14
    iput-boolean v6, p0, Lmodule/sound/C32107S;->i2:Z

    move v7, v6

    goto :goto_2

    :cond_6
    if-nez v7, :cond_7

    xor-int/lit8 v7, v5, 0x1

    .line 15
    :cond_7
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    new-array v8, v4, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v6

    const-string v10, "setVoiceSwitch2iis"

    invoke-static {v5, v10, v8}, Lo1/d0;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 16
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lmodule/sound/C32107S;->Y1:Landroid/media/AudioManager;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v9, v5, v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v8, v6

    invoke-static {v0, v3, v10, v5, v8}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lmodule/sound/C32107S;->Y1:Landroid/media/AudioManager;

    new-array v3, v4, [Ljava/lang/Class;

    aput-object v9, v3, v6

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v7, "setAudioSwitch2iis"

    invoke-static {v0, v1, v7, v3, v5}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 18
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lmodule/sound/C32107S;->Y1:Landroid/media/AudioManager;

    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v6

    aput-object v10, v9, v4

    aput-object v0, v9, v3

    const/4 v10, 0x3

    aput-object v0, v9, v10

    new-array v0, v8, [Ljava/lang/Object;

    const/16 v8, 0x8

    .line 19
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v0, v6

    xor-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v4

    const-string v7, ""

    aput-object v7, v0, v3

    aput-object v7, v0, v10

    const-string v3, "setWiredDeviceConnectionState"

    .line 20
    invoke-static {v1, v5, v3, v9, v0}, Lo1/d0;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lmodule/sound/C32107S;->i2:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->K1(Z)V

    .line 22
    iget-boolean v0, p0, Lmodule/sound/C32107S;->i2:Z

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->F1(Z)V

    .line 23
    sget-object v0, Lmodule/sound/C32107S$REG;->h:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v1, v4, [I

    aput v2, v1, v6

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 24
    sget-object v0, Ly0/f;->z0:[I

    aget p1, v0, p1

    if-ltz p1, :cond_a

    const/16 v0, 0x30

    if-ge p1, v0, :cond_a

    .line 25
    sget-object v0, Ly0/f;->w0:[I

    aget v0, v0, p1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->m(II)V

    :cond_a
    return-void
.end method

.method public a1(II)V
    .locals 9

    rsub-int/lit8 v0, p2, 0x28

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "speakerGain index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "C32107S"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 v1, 0x3

    .line 2
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->R:Lmodule/sound/C32107S$REG_ADI;

    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x2

    .line 3
    sget-object v2, Lmodule/sound/C32107S$REG_ADI;->P:Lmodule/sound/C32107S$REG_ADI;

    iget v2, v2, Lmodule/sound/C32107S$REG_ADI;->a:I

    :goto_0
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_2

    .line 4
    :sswitch_2
    sget-object v1, Lmodule/sound/C32107S$REG_ADI;->N:Lmodule/sound/C32107S$REG_ADI;

    iget v1, v1, Lmodule/sound/C32107S$REG_ADI;->a:I

    goto :goto_2

    .line 5
    :sswitch_3
    sget-object v1, Lmodule/sound/C32107S$REG_ADI;->L:Lmodule/sound/C32107S$REG_ADI;

    iget v1, v1, Lmodule/sound/C32107S$REG_ADI;->a:I

    move v2, v3

    goto :goto_2

    .line 6
    :sswitch_4
    iget-object v4, p0, Lmodule/sound/C32107S;->Q1:[I

    const/4 v5, 0x4

    aget v6, v4, v5

    if-eq v6, p2, :cond_0

    .line 7
    aput p2, v4, v5

    .line 8
    iget-object v4, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v5, Lmodule/sound/AudioDevice$STORE;->K:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    iget-object v7, p0, Lmodule/sound/C32107S;->Q1:[I

    invoke-virtual {v4, v6, v7}, Lo1/h0;->r(I[I)V

    .line 9
    iget-object v4, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Lo1/h0;->e(I)V

    .line 10
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->a1(II)V

    .line 11
    :cond_0
    sget-object v4, Lmodule/sound/C32107S$REG;->S:Lmodule/sound/C32107S$REG;

    iget v4, v4, Lmodule/sound/C32107S$REG;->a:I

    new-array v5, v2, [I

    rsub-int/lit8 v6, p2, 0x14

    add-int/lit16 v6, v6, 0xa0

    aput v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 12
    sget-object v4, Lmodule/sound/C32107S$REG;->U:Lmodule/sound/C32107S$REG;

    iget v4, v4, Lmodule/sound/C32107S$REG;->a:I

    new-array v2, v2, [I

    aput v6, v2, v3

    invoke-virtual {p0, v4, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    :goto_1
    move v2, v1

    .line 13
    :goto_2
    invoke-virtual {p0, v1, v2, v0}, Lmodule/sound/C32107S;->Q1(III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->a1(II)V

    :cond_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_4
        0x11000 -> :sswitch_3
        0x12000 -> :sswitch_2
        0x21000 -> :sswitch_1
        0x22000 -> :sswitch_0
    .end sparse-switch
.end method

.method public a2(Lmodule/sound/C32107S$REG;II)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-le p2, v1, :cond_0

    move p2, v0

    :cond_0
    const/16 v1, 0xc

    if-le p3, v1, :cond_1

    move p3, v0

    :cond_1
    const/4 v1, 0x4

    new-array v2, v1, [I

    .line 1
    fill-array-data v2, :array_0

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-eqz p3, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    aput v0, v2, v4

    goto :goto_1

    :cond_3
    :goto_0
    aput v3, v2, v4

    .line 2
    :goto_1
    monitor-enter p0

    .line 3
    :try_start_0
    sget-object v5, Lmodule/sound/C32107S$REG;->y:Lmodule/sound/C32107S$REG;

    const/4 v6, 0x2

    if-ne p1, v5, :cond_5

    if-eqz p3, :cond_4

    .line 4
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->n:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->w1:[[I

    aget-object v5, v5, p2

    invoke-virtual {p0, p1, v5}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 5
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->o:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->C1:[[I

    aget-object p3, v5, p3

    invoke-virtual {p0, p1, p3}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 6
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->p:Lmodule/sound/C32107S$REG_ADI;

    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->x1:[[I

    aget-object v5, v5, p2

    invoke-virtual {p0, p3, v0, v5}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 7
    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->y1:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v3, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 8
    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->z1:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v6, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 9
    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->A1:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v4, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 10
    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p3, p0, Lmodule/sound/C32107S;->B1:[[I

    aget-object p2, p3, p2

    invoke-virtual {p0, p1, v1, p2}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 11
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p2, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 12
    :cond_4
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->B:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107S;->E1(I[I)V

    goto :goto_2

    :cond_5
    if-eqz p3, :cond_6

    .line 13
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->u:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->w1:[[I

    aget-object v5, v5, p2

    invoke-virtual {p0, p1, v5}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 14
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->v:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->C1:[[I

    aget-object p3, v5, p3

    invoke-virtual {p0, p1, p3}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 15
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->w:Lmodule/sound/C32107S$REG_ADI;

    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->x1:[[I

    aget-object v5, v5, p2

    invoke-virtual {p0, p3, v0, v5}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 16
    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->y1:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v3, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 17
    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->z1:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v6, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 18
    iget p3, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v0, p0, Lmodule/sound/C32107S;->A1:[[I

    aget-object v0, v0, p2

    invoke-virtual {p0, p3, v4, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 19
    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p3, p0, Lmodule/sound/C32107S;->B1:[[I

    aget-object p2, p3, p2

    invoke-virtual {p0, p1, v1, p2}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 20
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p2, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 21
    :cond_6
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->C:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 22
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public b1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->e2:Z

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 2
    iput-boolean v0, p0, Lmodule/sound/C32107S;->e2:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->j([I)V

    .line 4
    :cond_1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->b1(Z)V

    return-void
.end method

.method public b2(Z)V
    .locals 0

    return-void
.end method

.method public c1()[I
    .locals 11

    const/16 v0, 0x10

    new-array v1, v0, [I

    .line 1
    sget-object v2, Lmodule/sound/C32107S$REG;->c:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    const/16 v3, 0x20

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->c2(II)[I

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    const/16 v6, 0xff

    const/4 v7, 0x1

    if-ge v4, v0, :cond_2

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v9, v8, 0x1

    .line 2
    aget v9, v2, v9

    and-int/2addr v9, v6

    aget v8, v2, v8

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v6, v9

    aput v6, v1, v4

    if-nez v5, :cond_1

    .line 3
    aget v5, v1, v4

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v3

    goto :goto_2

    :cond_1
    :goto_1
    move v5, v7

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_4

    .line 4
    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->e0()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move v0, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v0, v7

    .line 5
    :goto_4
    sget-object v2, Lbase/Configure$Property;->T:Lbase/Configure$Property;

    invoke-virtual {v2, v3}, Lbase/Configure$Property;->d(I)I

    move-result v2

    const/4 v4, 0x7

    const/4 v5, 0x2

    if-ne v2, v4, :cond_5

    sget v2, Lu0/b;->D:I

    const/4 v8, 0x3

    if-eq v2, v8, :cond_6

    if-eq v2, v5, :cond_6

    :cond_5
    sget v2, Lu0/b;->D:I

    if-ne v2, v7, :cond_7

    :cond_6
    move v0, v7

    .line 6
    :cond_7
    iget-boolean v2, p0, Lmodule/sound/AudioDevice;->J:Z

    const/4 v8, 0x4

    if-eqz v2, :cond_b

    if-nez v0, :cond_9

    .line 7
    iget v0, p0, Lmodule/sound/C32107S;->Z1:I

    if-ge v0, v4, :cond_8

    add-int/2addr v0, v7

    iput v0, p0, Lmodule/sound/C32107S;->Z1:I

    .line 8
    :cond_8
    iget v0, p0, Lmodule/sound/C32107S;->Z1:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_b

    .line 9
    iput-boolean v7, p0, Lmodule/sound/C32107S;->h2:Z

    .line 10
    iget-object v0, p0, Lmodule/sound/C32107S;->P0:[I

    array-length v2, v0

    sub-int/2addr v2, v7

    .line 11
    sget-object v9, Lmodule/sound/C32107S$REG;->S:Lmodule/sound/C32107S$REG;

    iget v9, v9, Lmodule/sound/C32107S$REG;->a:I

    new-array v10, v7, [I

    aget v0, v0, v2

    aput v0, v10, v3

    invoke-virtual {p0, v9, v10}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 12
    sget-object v0, Lmodule/sound/C32107S$REG;->T:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v9, v7, [I

    iget-object v10, p0, Lmodule/sound/C32107S;->P0:[I

    aget v10, v10, v2

    aput v10, v9, v3

    invoke-virtual {p0, v0, v9}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 13
    sget-object v0, Lmodule/sound/C32107S$REG;->U:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v9, v7, [I

    iget-object v10, p0, Lmodule/sound/C32107S;->P0:[I

    aget v10, v10, v2

    aput v10, v9, v3

    invoke-virtual {p0, v0, v9}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 14
    sget-object v0, Lmodule/sound/C32107S$REG;->V:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v7, v7, [I

    iget-object v9, p0, Lmodule/sound/C32107S;->P0:[I

    aget v2, v9, v2

    aput v2, v7, v3

    invoke-virtual {p0, v0, v7}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_5

    .line 15
    :cond_9
    iget-boolean v0, p0, Lmodule/sound/C32107S;->h2:Z

    if-eqz v0, :cond_a

    .line 16
    iput-boolean v3, p0, Lmodule/sound/C32107S;->h2:Z

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->j([I)V

    const/high16 v0, 0x10000

    .line 18
    iget-object v2, p0, Lmodule/sound/C32107S;->Q1:[I

    aget v2, v2, v8

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->a1(II)V

    .line 19
    :cond_a
    iput v3, p0, Lmodule/sound/C32107S;->Z1:I

    .line 20
    :cond_b
    :goto_5
    sget v0, Lu0/b;->D:I

    if-ne v0, v8, :cond_c

    const/16 v6, 0x5dc

    :cond_c
    new-array v0, v4, [I

    :goto_6
    if-ge v3, v4, :cond_d

    mul-int/lit8 v2, v3, 0x2

    add-int/2addr v2, v5

    .line 21
    aget v2, v1, v2

    mul-int/2addr v2, v6

    int-to-float v2, v2

    const v7, 0x477fff00    # 65535.0f

    div-float/2addr v2, v7

    float-to-int v2, v2

    aput v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_d
    return-object v0
.end method

.method public c2(II)[I
    .locals 7

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107S;->J1:Lo1/n;

    sget v1, Lmodule/sound/C32107S;->l2:I

    const/4 v2, 0x4

    new-array v2, v2, [I

    sget-object v3, Lmodule/sound/C32107S$REG;->c0:Lmodule/sound/C32107S$REG;

    iget v3, v3, Lmodule/sound/C32107S$REG;->a:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget-object v3, Lmodule/sound/C32107S$REG;->d0:Lmodule/sound/C32107S$REG;

    iget v3, v3, Lmodule/sound/C32107S$REG;->a:I

    const/4 v5, 0x1

    aput v3, v2, v5

    invoke-static {p1, v5}, Lo1/s0;->c(II)I

    move-result v3

    const/4 v6, 0x2

    aput v3, v2, v6

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result p1

    const/4 v3, 0x3

    aput p1, v2, v3

    invoke-virtual {v0, p2, v1, v5, v2}, Lo1/n;->e(IIZ[I)[I

    move-result-object p1

    return-object p1
.end method

.method public d2(I)I
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->c2(II)[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->e()V

    return-void
.end method

.method public e1(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 2
    iget v1, p0, Lmodule/sound/C32107S;->W1:I

    if-eq v1, p2, :cond_1

    .line 3
    sget-object v0, Lmodule/sound/C32107S$REG;->A:Lmodule/sound/C32107S$REG;

    .line 4
    iput p2, p0, Lmodule/sound/C32107S;->W1:I

    goto :goto_0

    :cond_1
    const/16 v1, 0x100

    if-ne p1, v1, :cond_2

    .line 5
    iget v1, p0, Lmodule/sound/C32107S;->X1:I

    if-eq v1, p2, :cond_2

    .line 6
    sget-object v0, Lmodule/sound/C32107S$REG;->B:Lmodule/sound/C32107S$REG;

    .line 7
    iput p2, p0, Lmodule/sound/C32107S;->X1:I

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107S;->i2(Lmodule/sound/C32107S$REG;I)V

    .line 9
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->e1(II)V

    :cond_3
    return-void
.end method

.method public final e2()V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const-wide/16 v1, 0x64

    .line 2
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/syu/jni/ToolsJni;->cmd_251_Normal_Io_Set(II)I

    const-wide/16 v0, 0x1f4

    .line 4
    invoke-static {v0, v1}, Lo1/s0;->C(J)V

    return-void
.end method

.method public f()V
    .locals 0

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->f()V

    return-void
.end method

.method public f1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->A:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lmodule/sound/AudioDevice;->A:Z

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->g2(Z)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->f1(Z)V

    return-void
.end method

.method public f2(I)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->f:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public g0(II)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 32107 set index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " set freq : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C32107S"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 2
    :sswitch_0
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    if-ne v2, p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v2, Lmodule/sound/C32107S$HPF;->e:Lmodule/sound/C32107S$HPF;

    .line 4
    aput p2, v0, v1

    goto :goto_1

    .line 5
    :sswitch_1
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v1, 0x2

    aget v2, v0, v1

    if-ne v2, p2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lmodule/sound/C32107S$HPF;->d:Lmodule/sound/C32107S$HPF;

    .line 7
    aput p2, v0, v1

    goto :goto_1

    :sswitch_2
    const v0, 0x20010

    .line 8
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107S;->g0(II)V

    goto :goto_0

    .line 9
    :sswitch_3
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    if-ne v2, p2, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    sget-object v2, Lmodule/sound/C32107S$HPF;->c:Lmodule/sound/C32107S$HPF;

    .line 11
    aput p2, v0, v1

    goto :goto_1

    .line 12
    :sswitch_4
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-ne v2, p2, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    sget-object v2, Lmodule/sound/C32107S$HPF;->b:Lmodule/sound/C32107S$HPF;

    .line 14
    aput p2, v0, v1

    goto :goto_1

    :sswitch_5
    const v0, 0x10010

    .line 15
    invoke-virtual {p0, v0, p2}, Lmodule/sound/C32107S;->g0(II)V

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_6

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_4

    .line 16
    iget v0, v2, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, p2, v0}, Lmodule/sound/C32107S;->V1(II)V

    goto :goto_2

    :cond_4
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_5

    mul-int/lit8 v0, p2, 0x64

    .line 17
    iget v1, v2, Lmodule/sound/C32107S$HPF;->a:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->Y1(II)V

    .line 18
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->g0(II)V

    .line 19
    :cond_6
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_5
        0x10010 -> :sswitch_4
        0x10020 -> :sswitch_3
        0x20000 -> :sswitch_2
        0x20010 -> :sswitch_1
        0x20020 -> :sswitch_0
    .end sparse-switch
.end method

.method public g1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->c2:Z

    return v0
.end method

.method public g2(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->f:Lmodule/sound/C32107S$REG;

    iget v1, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->d2(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, 0xdf

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x20

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->h(I)V

    .line 2
    invoke-virtual {p0}, Lmodule/sound/C32107S;->O1()V

    return-void
.end method

.method public h1(II)V
    .locals 7

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    move p2, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto/16 :goto_1

    .line 1
    :cond_1
    iget-object v2, p0, Lmodule/sound/C32107S;->V1:[I

    aget v3, v2, v1

    if-eq v3, p2, :cond_2

    .line 2
    aput p2, v2, v1

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v2, Lmodule/sound/AudioDevice$STORE;->N:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iget-object v4, p0, Lmodule/sound/C32107S;->V1:[I

    invoke-virtual {v0, v3, v4}, Lo1/h0;->r(I[I)V

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v0, v2}, Lo1/h0;->e(I)V

    move v0, v1

    .line 5
    :cond_2
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v1, Lmodule/sound/C32107S$REG_ADI;->j:Lmodule/sound/C32107S$REG_ADI;

    iget v1, v1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v2, p0, Lmodule/sound/C32107S;->r1:[[I

    aget-object v2, v2, p2

    invoke-virtual {p0, v1, v2}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 7
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 8
    :cond_3
    iget-object v2, p0, Lmodule/sound/C32107S;->U1:[I

    aget v3, v2, v1

    if-eq v3, p2, :cond_4

    .line 9
    aput p2, v2, v1

    .line 10
    iget-object v2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v3, Lmodule/sound/AudioDevice$STORE;->M:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    iget-object v5, p0, Lmodule/sound/C32107S;->U1:[I

    invoke-virtual {v2, v4, v5}, Lo1/h0;->r(I[I)V

    .line 11
    iget-object v2, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lo1/h0;->e(I)V

    move v2, v1

    goto :goto_0

    :cond_4
    move v2, v0

    .line 12
    :goto_0
    monitor-enter p0

    .line 13
    :try_start_1
    sget-object v3, Lmodule/sound/C32107S$REG_ADI;->e:Lmodule/sound/C32107S$REG_ADI;

    iget v4, v3, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->o1:[[I

    iget-object v6, p0, Lmodule/sound/C32107S;->U1:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {p0, v4, v0, v5}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 14
    iget v0, v3, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v3, p0, Lmodule/sound/C32107S;->p1:[[I

    aget-object v3, v3, p2

    invoke-virtual {p0, v0, v1, v3}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 15
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v1, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 16
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v2

    :goto_1
    if-eqz v0, :cond_5

    .line 17
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->h1(II)V

    :cond_5
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public h2(Z)V
    .locals 3

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->A:Lmodule/sound/C32107S$REG;

    iget v1, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->d2(I)I

    move-result v1

    .line 2
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    if-eqz p1, :cond_0

    and-int/lit16 p1, v1, 0xbf

    goto :goto_0

    :cond_0
    or-int/lit8 p1, v1, 0x40

    :goto_0
    const/4 v1, 0x0

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public i1(II)V
    .locals 9

    if-ltz p2, :cond_7

    const/16 v0, 0xa

    if-le p2, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    move v0, v3

    goto/16 :goto_3

    .line 1
    :cond_1
    iget-object v0, p0, Lmodule/sound/C32107S;->V1:[I

    aget v4, v0, v3

    if-eq v4, p2, :cond_2

    .line 2
    aput p2, v0, v3

    .line 3
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v4, Lmodule/sound/AudioDevice$STORE;->N:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    iget-object v6, p0, Lmodule/sound/C32107S;->V1:[I

    invoke-virtual {v0, v5, v6}, Lo1/h0;->r(I[I)V

    .line 4
    iget-object v0, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Lo1/h0;->e(I)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    .line 5
    :goto_0
    monitor-enter p0

    .line 6
    :try_start_0
    sget-object v4, Lmodule/sound/C32107S$REG_ADI;->g:Lmodule/sound/C32107S$REG_ADI;

    iget v5, v4, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v6, p0, Lmodule/sound/C32107S;->q1:[[I

    mul-int/lit8 v7, p2, 0x3

    aget-object v6, v6, v7

    invoke-virtual {p0, v5, v3, v6}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 7
    iget v5, v4, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v6, p0, Lmodule/sound/C32107S;->q1:[[I

    add-int/lit8 v8, v7, 0x1

    aget-object v6, v6, v8

    invoke-virtual {p0, v5, v2, v6}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 8
    iget v4, v4, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->q1:[[I

    add-int/2addr v7, v1

    aget-object v5, v5, v7

    invoke-virtual {p0, v4, v1, v5}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 9
    sget-object v4, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget v4, v4, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v5, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, v4, v5}, Lmodule/sound/C32107S;->o2(I[I)I

    .line 10
    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 11
    :cond_3
    iget-object v4, p0, Lmodule/sound/C32107S;->U1:[I

    aget v5, v4, v3

    if-eq v5, p2, :cond_4

    .line 12
    aput p2, v4, v3

    .line 13
    iget-object v4, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    sget-object v5, Lmodule/sound/AudioDevice$STORE;->M:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    iget-object v7, p0, Lmodule/sound/C32107S;->U1:[I

    invoke-virtual {v4, v6, v7}, Lo1/h0;->r(I[I)V

    .line 14
    iget-object v4, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Lo1/h0;->e(I)V

    move v4, v2

    goto :goto_1

    :cond_4
    move v4, v3

    .line 15
    :goto_1
    monitor-enter p0

    .line 16
    :try_start_1
    sget-object v5, Lmodule/sound/C32107S$REG_ADI;->e:Lmodule/sound/C32107S$REG_ADI;

    iget v5, v5, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v6, p0, Lmodule/sound/C32107S;->o1:[[I

    aget-object v6, v6, p2

    invoke-virtual {p0, v5, v6}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 17
    iget-object v5, p0, Lmodule/sound/C32107S;->U1:[I

    aget v5, v5, v2

    if-le v5, v0, :cond_5

    goto :goto_2

    :cond_5
    move v0, v5

    .line 18
    :goto_2
    sget-object v5, Lmodule/sound/C32107S$REG_ADI;->f:Lmodule/sound/C32107S$REG_ADI;

    iget v5, v5, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v6, p0, Lmodule/sound/C32107S;->p1:[[I

    aget-object v0, v6, v0

    invoke-virtual {p0, v5, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 19
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v0, v4

    :goto_3
    if-eqz v0, :cond_6

    const/16 v0, 0x23

    new-array v1, v1, [I

    aput p1, v1, v3

    aput p2, v1, v2

    .line 20
    invoke-static {v0, v1}, Ly0/h;->s0(I[I)V

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    .line 21
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_7
    :goto_4
    return-void
.end method

.method public i2(Lmodule/sound/C32107S$REG;I)V
    .locals 2

    .line 1
    iget v0, p1, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->d2(I)I

    move-result v0

    .line 2
    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    and-int/lit16 v0, v0, 0xf0

    or-int/2addr p2, v0

    const/4 v0, 0x0

    aput p2, v1, v0

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public j([I)V
    .locals 9

    .line 1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->e:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lmodule/sound/C32107S;->e2:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lmodule/sound/C32107S;->h2:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    sget p1, Ly0/f;->L0:I

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lo1/o0;->a(III)I

    move-result p1

    .line 3
    sget v2, Ly0/f;->M0:I

    invoke-static {v2, v0, v1}, Lo1/o0;->a(III)I

    move-result v2

    .line 4
    sget v3, Lh0/c;->G:I

    if-eqz v3, :cond_1

    sget-boolean v3, Lu0/b;->j2:Z

    if-eqz v3, :cond_1

    .line 5
    sget-object p1, Ln0/j4;->d:Ln0/c4;

    invoke-virtual {p1}, Ln0/c4;->L2()[I

    move-result-object p1

    .line 6
    aget v0, p1, v0

    const/4 v2, 0x1

    .line 7
    aget v2, p1, v2

    move p1, v0

    .line 8
    :cond_1
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    rsub-int/lit8 v3, p1, 0x10

    .line 9
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr v1, v2

    .line 10
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 11
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, 0x40200000    # 2.5f

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-double v5, v0

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    add-double/2addr v5, v7

    double-to-int v0, v5

    const/16 v3, 0x28

    .line 12
    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x28

    int-to-float v4, v4

    mul-float/2addr v4, v2

    float-to-double v4, v4

    add-double/2addr v4, v7

    double-to-int v4, v4

    .line 13
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x28

    int-to-float p1, p1

    mul-float/2addr p1, v2

    float-to-double v5, p1

    add-double/2addr v5, v7

    double-to-int p1, v5

    .line 14
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x28

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-double v1, v1

    add-double/2addr v1, v7

    double-to-int v1, v1

    .line 15
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v3, v1

    const v1, 0x11000

    .line 16
    invoke-virtual {p0, v1, v0}, Lmodule/sound/C32107S;->a1(II)V

    const v0, 0x12000

    .line 17
    invoke-virtual {p0, v0, v4}, Lmodule/sound/C32107S;->a1(II)V

    const v0, 0x21000

    .line 18
    invoke-virtual {p0, v0, p1}, Lmodule/sound/C32107S;->a1(II)V

    const p1, 0x22000

    .line 19
    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->a1(II)V

    const/4 p1, 0x0

    .line 20
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->j([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public j0(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/sound/AudioDevice;->d:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-gez p1, :cond_0

    .line 2
    sget-object p1, Lmodule/sound/C32107S$CHANNEL;->b:Lmodule/sound/C32107S$CHANNEL;

    iget p1, p1, Lmodule/sound/C32107S$CHANNEL;->a:I

    .line 3
    :cond_0
    sget-object v0, Lmodule/sound/C32107S$CHANNEL;->b:Lmodule/sound/C32107S$CHANNEL;

    iget v0, v0, Lmodule/sound/C32107S$CHANNEL;->a:I

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public j1(II)V
    .locals 7

    const/4 v0, 0x0

    const/16 v1, 0xa0

    if-gt p2, v1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    move p2, v0

    :cond_1
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1
    :sswitch_0
    iget-object v5, p0, Lmodule/sound/C32107S;->T1:[I

    aget v6, v5, v0

    if-ne p2, v6, :cond_2

    aget v6, v5, v4

    if-ne p2, v6, :cond_2

    aget v2, v5, v2

    if-ne p2, v2, :cond_2

    aget v1, v5, v1

    if-ne p2, v1, :cond_2

    aget v1, v5, v3

    if-eq p2, v1, :cond_3

    :cond_2
    move v0, v4

    :cond_3
    const v1, 0x11000

    .line 2
    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107S;->j1(II)V

    const v1, 0x12000

    .line 3
    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107S;->j1(II)V

    const v1, 0x21000

    .line 4
    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107S;->j1(II)V

    const v1, 0x22000

    .line 5
    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107S;->j1(II)V

    const/high16 v1, 0x10000

    .line 6
    invoke-virtual {p0, v1, p2}, Lmodule/sound/C32107S;->j1(II)V

    goto :goto_1

    .line 7
    :sswitch_1
    iget-object v2, p0, Lmodule/sound/C32107S;->T1:[I

    aget v3, v2, v1

    if-eq p2, v3, :cond_4

    move v0, v4

    .line 8
    :cond_4
    aput p2, v2, v1

    goto :goto_1

    .line 9
    :sswitch_2
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v3, v1, v2

    if-eq p2, v3, :cond_5

    move v0, v4

    .line 10
    :cond_5
    aput p2, v1, v2

    goto :goto_1

    .line 11
    :sswitch_3
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v2, v1, v4

    if-eq p2, v2, :cond_6

    move v0, v4

    .line 12
    :cond_6
    aput p2, v1, v4

    goto :goto_1

    .line 13
    :sswitch_4
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v2, v1, v0

    if-eq p2, v2, :cond_7

    goto :goto_0

    :cond_7
    move v4, v0

    .line 14
    :goto_0
    aput p2, v1, v0

    move v0, v4

    goto :goto_1

    .line 15
    :sswitch_5
    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    aget v2, v1, v3

    if-eq p2, v2, :cond_8

    move v0, v4

    .line 16
    :cond_8
    aput p2, v1, v3

    .line 17
    :goto_1
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->j2(II)V

    if-nez v0, :cond_9

    return-void

    .line 18
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   <<<>>>> flush data start  surroundLevel :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "C32107S"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->H0(Lmodule/sound/AudioDevice$STORE;[I)V

    .line 20
    invoke-super {p0, p1, p2}, Lmodule/sound/AudioDevice;->j1(II)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_5
        0x11000 -> :sswitch_4
        0x12000 -> :sswitch_3
        0x21000 -> :sswitch_2
        0x22000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public j2(II)V
    .locals 8

    .line 1
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v3, 0x2

    aput v1, v0, v3

    const/4 v4, 0x3

    aput v2, v0, v4

    const-string v5, "C32107S"

    .line 2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    surrLevel  index :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "   level: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget v5, p0, Lmodule/sound/C32107S;->I1:I

    if-ne v5, v2, :cond_0

    mul-int/lit16 v5, p2, 0x180

    .line 4
    div-int/lit16 v5, v5, 0xa0

    goto :goto_0

    :cond_0
    mul-int/lit16 v5, p2, 0xc0

    .line 5
    div-int/lit16 v5, v5, 0xa0

    :goto_0
    add-int/2addr v5, v2

    .line 6
    invoke-static {v5, v2}, Lo1/s0;->c(II)I

    move-result v6

    aput v6, v0, v3

    .line 7
    invoke-static {v5, v1}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v0, v4

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 8
    :sswitch_0
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->I:Lmodule/sound/C32107S$REG_ADI;

    iget p2, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p2, v1, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 9
    iget p2, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p2, v2, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 10
    iget p2, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p2, v3, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 11
    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v4, v0}, Lmodule/sound/C32107S;->D1(II[I)V

    .line 12
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->X:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object p2, p0, Lmodule/sound/C32107S;->G1:[I

    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->o2(I[I)I

    goto :goto_1

    .line 13
    :sswitch_1
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->K:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    goto :goto_1

    .line 14
    :sswitch_2
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->J:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    goto :goto_1

    .line 15
    :sswitch_3
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->I:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    goto :goto_1

    .line 16
    :sswitch_4
    sget-object p1, Lmodule/sound/C32107S$REG_ADI;->H:Lmodule/sound/C32107S$REG_ADI;

    iget p1, p1, Lmodule/sound/C32107S$REG_ADI;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->E1(I[I)V

    goto :goto_1

    .line 17
    :sswitch_5
    invoke-virtual {p0, p1, p2}, Lmodule/sound/C32107S;->k2(II)V

    .line 18
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_5
        0x11000 -> :sswitch_4
        0x12000 -> :sswitch_3
        0x21000 -> :sswitch_2
        0x22000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method public k1(I)V
    .locals 2

    .line 1
    monitor-enter p0

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->k:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v1, p0, Lmodule/sound/C32107S;->j1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 3
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8fdb\u5165SPhat----"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->k:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v1, p0, Lmodule/sound/C32107S;->i1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 5
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8fdb\u5165phat\u6a21\u5f0f--- "

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    sget-object v0, Lmodule/sound/C32107S$REG_ADI;->k:Lmodule/sound/C32107S$REG_ADI;

    iget v0, v0, Lmodule/sound/C32107S$REG_ADI;->a:I

    iget-object v1, p0, Lmodule/sound/C32107S;->k1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->E1(I[I)V

    .line 7
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "\u8fdb\u5165\u76f4\u901a\u6a21\u5f0f--- "

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget v0, p0, Lmodule/sound/C32107S;->I1:I

    if-ne v0, p1, :cond_3

    return-void

    .line 10
    :cond_3
    iput p1, p0, Lmodule/sound/C32107S;->I1:I

    .line 11
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->k1(I)V

    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public k2(II)V
    .locals 5

    .line 1
    iget v0, p0, Lmodule/sound/C32107S;->I1:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    mul-int/lit16 p2, p2, 0x180

    .line 2
    div-int/lit16 p2, p2, 0xa0

    goto :goto_0

    :cond_0
    mul-int/lit16 p2, p2, 0xc0

    .line 3
    div-int/lit16 p2, p2, 0xa0

    .line 4
    :goto_0
    invoke-static {p2, v1}, Lo1/s0;->c(II)I

    move-result v0

    const/4 v2, 0x0

    .line 5
    invoke-static {p2, v2}, Lo1/s0;->c(II)I

    move-result p2

    const/high16 v3, 0x10000

    const/4 v4, 0x2

    if-eq p1, v3, :cond_5

    const v3, 0x12000

    if-eq p1, v3, :cond_4

    const v3, 0x21000

    if-eq p1, v3, :cond_3

    const v3, 0x22000

    if-eq p1, v3, :cond_2

    const/high16 v3, 0x40000000    # 2.0f

    if-eq p1, v3, :cond_1

    goto/16 :goto_1

    .line 6
    :cond_1
    sget-object p1, Lmodule/sound/C32107S$REG;->n:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 7
    sget-object p1, Lmodule/sound/C32107S$REG;->o:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 8
    sget-object p1, Lmodule/sound/C32107S$REG;->p:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 9
    sget-object p1, Lmodule/sound/C32107S$REG;->q:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 10
    sget-object p1, Lmodule/sound/C32107S$REG;->s:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 11
    sget-object p1, Lmodule/sound/C32107S$REG;->t:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_1

    .line 12
    :cond_2
    sget-object p1, Lmodule/sound/C32107S$REG;->q:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 13
    sget-object p1, Lmodule/sound/C32107S$REG;->t:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_1

    .line 14
    :cond_3
    sget-object p1, Lmodule/sound/C32107S$REG;->p:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 15
    sget-object p1, Lmodule/sound/C32107S$REG;->s:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_1

    .line 16
    :cond_4
    sget-object p1, Lmodule/sound/C32107S$REG;->o:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_1

    .line 17
    :cond_5
    sget-object p1, Lmodule/sound/C32107S$REG;->n:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v4, [I

    aput v0, v3, v2

    aput p2, v3, v1

    invoke-virtual {p0, p1, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    :goto_1
    return-void
.end method

.method public l(I)V
    .locals 7

    .line 1
    sget-object v0, Lmodule/sound/C32107S$REG;->f:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->d2(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 2
    :goto_0
    iget-boolean v4, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eq v3, v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    .line 3
    :goto_1
    iput-boolean v3, p0, Lmodule/sound/AudioDevice;->f:Z

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l(I)V

    .line 5
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->f:Z

    if-eqz p1, :cond_4

    if-eqz v3, :cond_2

    and-int/lit16 p1, v0, 0xf7

    goto :goto_2

    :cond_2
    or-int/lit8 p1, v0, 0x8

    .line 6
    :goto_2
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->f2(I)V

    .line 7
    sget p1, Lmodule/sound/C32107S;->k2:I

    sget-boolean v0, Lmodule/sound/AudioDevice;->H0:Z

    if-eqz v0, :cond_3

    sget-object v0, Lmodule/sound/C32107S;->q2:[I

    iget v3, p0, Lmodule/sound/AudioDevice;->g:I

    aget v0, v0, v3

    goto :goto_3

    :cond_3
    const/16 v0, 0xc

    :goto_3
    add-int/2addr p1, v0

    .line 8
    sget-object v0, Lmodule/sound/C32107S$REG;->M:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v2, [I

    rsub-int v4, p1, 0x80

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 9
    sget-object v0, Lmodule/sound/C32107S$REG;->N:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v2, [I

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 10
    sget-object v0, Lmodule/sound/C32107S$REG;->O:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v2, [I

    add-int/lit8 v5, v4, -0x6

    aput v5, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 11
    sget-object v0, Lmodule/sound/C32107S$REG;->P:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v2, [I

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 12
    sget-object v0, Lmodule/sound/C32107S$REG;->Q:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v2, [I

    add-int/lit8 v4, v4, -0xb

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    const/16 v0, 0x702

    new-array v2, v2, [I

    .line 13
    sget v3, Lmodule/sound/C32107S;->k2:I

    sub-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x2

    or-int/lit16 p1, p1, 0x90

    aput p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_5

    .line 14
    :cond_4
    sget-object p1, Lmodule/sound/C32107S$REG;->M:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v5, v2, [I

    sget v6, Lmodule/sound/C32107S;->k2:I

    rsub-int v6, v6, 0x80

    aput v6, v5, v1

    invoke-virtual {p0, p1, v5}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 15
    sget-object p1, Lmodule/sound/C32107S$REG;->N:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v5, v2, [I

    sget v6, Lmodule/sound/C32107S;->k2:I

    rsub-int v6, v6, 0x80

    aput v6, v5, v1

    invoke-virtual {p0, p1, v5}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 16
    sget-object p1, Lmodule/sound/C32107S$REG;->O:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v5, v2, [I

    sget v6, Lmodule/sound/C32107S;->k2:I

    rsub-int v6, v6, 0x80

    add-int/lit8 v6, v6, -0x6

    aput v6, v5, v1

    invoke-virtual {p0, p1, v5}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 17
    sget-object p1, Lmodule/sound/C32107S$REG;->P:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v5, v2, [I

    sget v6, Lmodule/sound/C32107S;->k2:I

    rsub-int v6, v6, 0x80

    aput v6, v5, v1

    invoke-virtual {p0, p1, v5}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 18
    sget-object p1, Lmodule/sound/C32107S$REG;->Q:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v2, v2, [I

    sget v5, Lmodule/sound/C32107S;->k2:I

    rsub-int v5, v5, 0x80

    add-int/lit8 v5, v5, -0xb

    aput v5, v2, v1

    invoke-virtual {p0, p1, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    if-eqz v4, :cond_5

    const-wide/16 v1, 0xc8

    .line 19
    invoke-static {v1, v2}, Lo1/s0;->C(J)V

    :cond_5
    if-eqz v3, :cond_6

    and-int/lit16 p1, v0, 0xf7

    goto :goto_4

    :cond_6
    or-int/lit8 p1, v0, 0x8

    .line 20
    :goto_4
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->f2(I)V

    :goto_5
    return-void
.end method

.method public l1(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->L1:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lmodule/sound/C32107S;->L1:Z

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->H1(Z)V

    .line 4
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->l1(Z)V

    return-void
.end method

.method public l2(Lmodule/sound/C32107S$IIR;I)V
    .locals 0

    .line 1
    iget p1, p1, Lmodule/sound/C32107S$IIR;->a:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->X1(I)V

    add-int/lit8 p2, p2, -0xa

    .line 2
    invoke-virtual {p0, p2}, Lmodule/sound/C32107S;->m2(I)V

    return-void
.end method

.method public m(II)V
    .locals 3

    if-ltz p1, :cond_1

    const/16 v0, 0x30

    if-ge p1, v0, :cond_1

    .line 1
    sget v0, Lu0/b;->D:I

    if-ltz v0, :cond_1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 2
    sget-object v2, Ly0/f;->z0:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    const/4 p1, 0x0

    .line 3
    invoke-static {p2, p1, v1}, Lo1/o0;->a(III)I

    move-result p2

    invoke-virtual {p0, v0}, Lmodule/sound/AudioDevice;->V(I)I

    move-result v0

    sget-object v1, Lmodule/sound/C32107S$CHANNEL;->d:Lmodule/sound/C32107S$CHANNEL;

    iget v1, v1, Lmodule/sound/C32107S$CHANNEL;->a:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    add-int/2addr p2, v0

    .line 4
    sget-object v0, Lmodule/sound/C32107S$REG;->g:Lmodule/sound/C32107S$REG;

    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    :cond_1
    return-void
.end method

.method public m0()V
    .locals 7

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->m0()V

    .line 2
    sget-object v0, Lmodule/sound/C32107S$EQType;->c:Lmodule/sound/C32107S$EQType;

    iput-object v0, p0, Lmodule/sound/C32107S;->H1:Lmodule/sound/C32107S$EQType;

    .line 3
    sget-object v1, Lmodule/sound/C32107S$EQType;->b:Lmodule/sound/C32107S$EQType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0x1b

    :goto_0
    iput v0, p0, Lmodule/sound/AudioDevice;->j:I

    .line 4
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lmodule/sound/AudioDevice;->q:[I

    .line 5
    iget-object v0, p0, Lmodule/sound/C32107S;->N1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->q:Lmodule/sound/AudioDevice$STORE;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 6
    iget-object v0, p0, Lmodule/sound/C32107S;->N1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->p:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 7
    iget-object v0, p0, Lmodule/sound/C32107S;->O1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->s:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 8
    iget-object v0, p0, Lmodule/sound/C32107S;->O1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->r:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v1, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v3

    .line 9
    iput-boolean v3, p0, Lmodule/sound/C32107S;->L1:Z

    .line 10
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->v:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v2}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lmodule/sound/C32107S;->K1:Z

    .line 11
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->c:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v0, v3}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lmodule/sound/C32107S;->M1:Z

    .line 12
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->e:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107S;->I1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107S;->I1:I

    .line 13
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->f:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107S;->T1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107S;->T1:[I

    .line 14
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->h:Lmodule/sound/AudioDevice$STORE;

    sget v4, Lmodule/sound/C32107S;->n2:I

    invoke-virtual {p0, v1, v4}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v2

    .line 15
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    sget-object v1, Lmodule/sound/AudioDevice$STORE;->i:Lmodule/sound/AudioDevice$STORE;

    const/16 v4, 0xc8

    invoke-virtual {p0, v1, v4}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    aput v1, v0, v3

    .line 16
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v1, 0x2

    sget-object v5, Lmodule/sound/AudioDevice$STORE;->j:Lmodule/sound/AudioDevice$STORE;

    sget v6, Lmodule/sound/C32107S;->n2:I

    invoke-virtual {p0, v5, v6}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v5

    aput v5, v0, v1

    .line 17
    iget-object v0, p0, Lmodule/sound/C32107S;->P1:[I

    const/4 v1, 0x3

    sget-object v5, Lmodule/sound/AudioDevice$STORE;->k:Lmodule/sound/AudioDevice$STORE;

    invoke-virtual {p0, v5, v4}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v4

    aput v4, v0, v1

    .line 18
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->t:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107S;->R1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v1

    iput v1, p0, Lmodule/sound/C32107S;->R1:I

    .line 19
    iget v1, p0, Lmodule/sound/C32107S;->S1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107S;->S1:I

    .line 20
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->l:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107S;->W1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107S;->W1:I

    .line 21
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->m:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107S;->X1:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107S;->X1:I

    .line 22
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->K:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107S;->Q1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107S;->Q1:[I

    .line 23
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->M:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107S;->U1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107S;->U1:[I

    .line 24
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->N:Lmodule/sound/AudioDevice$STORE;

    iget-object v1, p0, Lmodule/sound/C32107S;->V1:[I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Z(Lmodule/sound/AudioDevice$STORE;[I)[I

    move-result-object v0

    iput-object v0, p0, Lmodule/sound/C32107S;->V1:[I

    .line 25
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->P:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107S;->f2:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107S;->f2:I

    .line 26
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->Q:Lmodule/sound/AudioDevice$STORE;

    iget v1, p0, Lmodule/sound/C32107S;->g2:I

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    iput v0, p0, Lmodule/sound/C32107S;->g2:I

    .line 27
    sget-object v0, Lmodule/sound/AudioDevice$STORE;->T:Lmodule/sound/AudioDevice$STORE;

    iget-boolean v1, p0, Lmodule/sound/AudioDevice;->C:Z

    invoke-virtual {p0, v0, v1}, Lmodule/sound/AudioDevice;->Y(Lmodule/sound/AudioDevice$STORE;I)I

    move-result v0

    if-ne v0, v3, :cond_3

    move v2, v3

    :cond_3
    iput-boolean v2, p0, Lmodule/sound/AudioDevice;->C:Z

    return-void
.end method

.method public m2(I)V
    .locals 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    .line 1
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x41a0000000000000L    # 1.34217728E8

    mul-double/2addr v0, v2

    double-to-int p1, v0

    const/16 v0, 0x14

    .line 2
    invoke-static {v0}, Lo1/s0;->a(I)[I

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    invoke-static {p1, v1}, Lo1/s0;->c(II)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2}, Lo1/s0;->c(II)I

    move-result v4

    const/4 v5, 0x1

    aput v4, v0, v5

    .line 5
    invoke-static {p1, v5}, Lo1/s0;->c(II)I

    move-result v4

    aput v4, v0, v2

    .line 6
    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v0, v1

    .line 7
    sget-object p1, Lmodule/sound/C32107S$REG;->b0:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public varargs n2(I[I)I
    .locals 6

    .line 1
    iget-object v0, p0, Lmodule/sound/C32107S;->J1:Lo1/n;

    sget v1, Lmodule/sound/C32107S;->l2:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    invoke-static {p1, v3}, Lo1/s0;->c(II)I

    move-result v4

    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {p1, v5}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    return p1
.end method

.method public o(I)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lmodule/sound/AudioDevice;->A:Z

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget p1, Ly0/f;->V0:I

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lo1/o0;->a(III)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->S1(I)I

    move-result p1

    .line 4
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->D:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, p1

    .line 5
    :goto_0
    sget-object v2, Lmodule/sound/C32107S$REG;->W:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    const/4 v3, 0x1

    new-array v3, v3, [I

    iget-object v4, p0, Lmodule/sound/C32107S;->N0:[I

    aget v0, v4, v0

    aput v0, v3, v1

    invoke-virtual {p0, v2, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 6
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->B:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->o(I)V

    :cond_2
    return-void
.end method

.method public o0(I)V
    .locals 7

    const/16 v0, 0x1b

    .line 1
    iput v0, p0, Lmodule/sound/AudioDevice;->j:I

    .line 2
    iget v1, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v0, v1

    .line 3
    new-array v1, v0, [I

    .line 4
    invoke-virtual {p0, p1}, Lmodule/sound/AudioDevice;->Q(I)Lmodule/sound/AudioDevice$STORE;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lmodule/sound/AudioDevice;->t:Lo1/h0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v3, v2}, Lo1/h0;->i(I)[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    array-length v3, v2

    if-ne v3, v0, :cond_0

    .line 7
    array-length v0, v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lmodule/sound/C32107S;->T0:[I

    .line 9
    array-length v2, v0

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   loadCustomData  size :  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "    band  *  eqParamNum  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    iget v5, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " customMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "c32107"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget v3, p0, Lmodule/sound/AudioDevice;->j:I

    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v3, v4

    const/4 v6, 0x0

    if-ne v2, v5, :cond_1

    .line 12
    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    mul-int/2addr v3, v4

    if-ge v2, v3, :cond_2

    .line 13
    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v3, p0, Lmodule/sound/AudioDevice;->j:I

    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int/2addr v3, v4

    sub-int/2addr v3, v2

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 15
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v1}, Lmodule/sound/AudioDevice;->Z0(I[I)V

    return-void
.end method

.method public varargs o2(I[I)I
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->d2:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/sound/C32107S;->J1:Lo1/n;

    sget v2, Lmodule/sound/C32107S;->m2:I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lo1/s0;->c(II)I

    move-result v5

    aput v5, v3, v1

    invoke-static {p1, v1}, Lo1/s0;->c(II)I

    move-result p1

    aput p1, v3, v4

    invoke-virtual {v0, v2, v3, p2}, Lo1/n;->d(I[I[I)I

    move-result p1

    return p1
.end method

.method public p0()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public q0()I
    .locals 1

    const/16 v0, 0xf0

    return v0
.end method

.method public r0(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1
    :goto_0
    invoke-virtual {p0, v2}, Lmodule/sound/C32107S;->Z1(Z)V

    .line 2
    iget-object v2, p0, Lmodule/sound/C32107S;->M0:[I

    array-length v2, v2

    sub-int/2addr v2, v0

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3
    iput p1, p0, Lmodule/sound/AudioDevice;->h:I

    if-nez p1, :cond_1

    .line 4
    iget-object v2, p0, Lmodule/sound/C32107S;->M0:[I

    aget p1, v2, p1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lmodule/sound/C32107S;->p0()I

    move-result v2

    iget-object v3, p0, Lmodule/sound/C32107S;->M0:[I

    aget p1, v3, p1

    invoke-virtual {p0}, Lmodule/sound/AudioDevice;->F0()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {p0}, Lmodule/sound/C32107S;->q0()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    :goto_1
    sget-object v2, Lmodule/sound/C32107S$REG;->j:Lmodule/sound/C32107S$REG;

    iget v2, v2, Lmodule/sound/C32107S$REG;->a:I

    new-array v0, v0, [I

    aput p1, v0, v1

    invoke-virtual {p0, v2, v0}, Lmodule/sound/C32107S;->n2(I[I)I

    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->d2:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0}, Lmodule/sound/AudioDevice;->run()V

    return-void
.end method

.method public u1()I
    .locals 1

    .line 1
    invoke-super {p0}, Lmodule/sound/AudioDevice;->u1()I

    move-result v0

    return v0
.end method

.method public v0(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lmodule/sound/AudioDevice;->v0(Z)V

    .line 2
    iget-boolean v0, p0, Lmodule/sound/AudioDevice;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    sget-object p1, Lmodule/sound/C32107S$REG;->S:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    const/4 v0, 0x1

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107S;->P0:[I

    array-length v3, v2

    sub-int/2addr v3, v0

    aget v2, v2, v3

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 4
    sget-object p1, Lmodule/sound/C32107S$REG;->T:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107S;->P0:[I

    array-length v4, v2

    sub-int/2addr v4, v0

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 5
    sget-object p1, Lmodule/sound/C32107S$REG;->U:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107S;->P0:[I

    array-length v4, v2

    sub-int/2addr v4, v0

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 6
    sget-object p1, Lmodule/sound/C32107S$REG;->V:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v1, v0, [I

    iget-object v2, p0, Lmodule/sound/C32107S;->P0:[I

    array-length v4, v2

    sub-int/2addr v4, v0

    aget v2, v2, v4

    aput v2, v1, v3

    invoke-virtual {p0, p1, v1}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 7
    sget-object p1, Lmodule/sound/C32107S$REG;->W:Lmodule/sound/C32107S$REG;

    iget p1, p1, Lmodule/sound/C32107S$REG;->a:I

    new-array v0, v0, [I

    iget-object v1, p0, Lmodule/sound/C32107S;->N0:[I

    aget v1, v1, v3

    aput v1, v0, v3

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->n2(I[I)I

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean p1, p0, Lmodule/sound/C32107S;->h2:Z

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->j([I)V

    .line 10
    sget p1, Ly0/f;->V0:I

    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->o(I)V

    const/high16 p1, 0x10000

    .line 11
    iget-object v0, p0, Lmodule/sound/C32107S;->Q1:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    invoke-virtual {p0, p1, v0}, Lmodule/sound/C32107S;->a1(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public w0(I)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lmodule/sound/C32107S;->U1(I)[I

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmodule/sound/AudioDevice;->q:[I

    invoke-virtual {p0, v1, p1}, Lmodule/sound/C32107S;->I1([II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lmodule/sound/AudioDevice;->q:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    iget p1, p0, Lmodule/sound/AudioDevice;->j:I

    new-array v1, p1, [I

    .line 5
    new-array v3, p1, [I

    .line 6
    new-array p1, p1, [I

    .line 7
    :goto_0
    iget v4, p0, Lmodule/sound/AudioDevice;->j:I

    if-ge v2, v4, :cond_0

    .line 8
    iget v4, p0, Lmodule/sound/AudioDevice;->p:I

    mul-int v5, v2, v4

    aget v5, v0, v5

    aput v5, v3, v2

    mul-int v5, v2, v4

    add-int/lit8 v5, v5, 0x1

    .line 9
    aget v5, v0, v5

    aput v5, v1, v2

    mul-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x2

    .line 10
    aget v4, v0, v4

    aput v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v1, v3, p1, v4, p0}, Ly0/h;->H([I[I[IILmodule/sound/AudioDevice;)V

    .line 12
    :cond_1
    invoke-virtual {p0, v0}, Lmodule/sound/C32107S;->M1([I)V

    return-void
.end method

.method public y()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lmodule/sound/C32107S;->K1:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-boolean v0, p0, Lmodule/sound/C32107S;->i2:Z

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lmodule/sound/C32107S;->G1(Z)V

    const-wide/16 v3, 0x14

    .line 4
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 5
    :cond_0
    sget-object v0, Lmodule/sound/C32107S$REG;->i:Lmodule/sound/C32107S$REG;

    iget v3, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v3}, Lmodule/sound/C32107S;->d2(I)I

    move-result v3

    .line 6
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v2, [I

    or-int/lit8 v3, v3, 0x70

    aput v3, v4, v1

    invoke-virtual {p0, v0, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 7
    iget-boolean v0, p0, Lmodule/sound/C32107S;->i2:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v2}, Lmodule/sound/C32107S;->G1(Z)V

    .line 9
    :cond_1
    sget-object v0, Lmodule/sound/C32107S$REG;->F:Lmodule/sound/C32107S$REG;

    iget v3, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v4, v2, [I

    const/4 v5, 0x5

    aput v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lmodule/sound/C32107S;->n2(I[I)I

    const-wide/16 v3, 0x32

    .line 10
    invoke-static {v3, v4}, Lo1/s0;->C(J)V

    .line 11
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v3, v2, [I

    const/4 v4, 0x4

    aput v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 12
    iget-boolean v0, p0, Lmodule/sound/C32107S;->K1:Z

    if-nez v0, :cond_2

    .line 13
    sget-object v0, Lmodule/sound/C32107S$REG;->i:Lmodule/sound/C32107S$REG;

    iget v3, v0, Lmodule/sound/C32107S$REG;->a:I

    invoke-virtual {p0, v3}, Lmodule/sound/C32107S;->d2(I)I

    move-result v3

    .line 14
    iget v0, v0, Lmodule/sound/C32107S$REG;->a:I

    new-array v2, v2, [I

    and-int/lit16 v3, v3, 0x8f

    aput v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lmodule/sound/C32107S;->n2(I[I)I

    .line 15
    invoke-virtual {p0, v1}, Lmodule/sound/C32107S;->G1(Z)V

    :cond_2
    return-void
.end method
