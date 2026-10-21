.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CDMA:I = 0x70

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final EVDO:I = 0x3180

.field private static final GSM:I = 0x10006

.field private static final HS:I = 0x8e00

.field private static final LTE:I = 0x84000

.field public static final RAF_1xRTT:I = 0x40

.field public static final RAF_EDGE:I = 0x4

.field public static final RAF_EHRPD:I = 0x2000

.field public static final RAF_EVDO_0:I = 0x80

.field public static final RAF_EVDO_A:I = 0x100

.field public static final RAF_EVDO_B:I = 0x1000

.field public static final RAF_GPRS:I = 0x2

.field public static final RAF_GSM:I = 0x10000

.field public static final RAF_HSDPA:I = 0x200

.field public static final RAF_HSPA:I = 0x800

.field public static final RAF_HSPAP:I = 0x8000

.field public static final RAF_HSUPA:I = 0x400

.field public static final RAF_IS95A:I = 0x10

.field public static final RAF_IS95B:I = 0x20

.field public static final RAF_LTE:I = 0x4000

.field public static final RAF_LTE_CA:I = 0x80000

.field public static final RAF_TD_SCDMA:I = 0x20000

.field public static final RAF_UMTS:I = 0x8

.field public static final RAF_UNKNOWN:I = 0x1

.field private static final WCDMA:I = 0x8e08


# instance fields
.field private mPhoneId:I

.field private mRadioAccessFamily:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    .line 5
    .line 6
    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    .line 7
    .line 8
    return-void
.end method

.method private static getAdjustedRaf(I)I
    .locals 2

    const v0, 0x10006

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr p0, v0

    :cond_0
    const v0, 0x8e08

    and-int v1, p0, v0

    if-lez v1, :cond_1

    or-int/2addr p0, v0

    :cond_1
    and-int/lit8 v0, p0, 0x70

    if-lez v0, :cond_2

    or-int/lit8 p0, p0, 0x70

    :cond_2
    and-int/lit16 v0, p0, 0x3180

    if-lez v0, :cond_3

    or-int/lit16 p0, p0, 0x3180

    :cond_3
    const v0, 0x84000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    return p0
.end method

.method public static getHighestRafCapability(I)I
    .locals 2

    const v0, 0x84000

    and-int/2addr v0, p0

    if-lez v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const v0, 0x8e08

    and-int/2addr v0, p0

    const v1, 0xbf80

    or-int/2addr v0, v1

    if-lez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    and-int/lit8 p0, p0, 0x70

    const v0, 0x10006

    or-int/2addr p0, v0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static getNetworkTypeFromRaf(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    sparse-switch p0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :sswitch_0
    const/16 p0, 0x16

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :sswitch_1
    const/16 p0, 0x14

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :sswitch_2
    const/16 p0, 0x11

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :sswitch_3
    const/16 p0, 0x13

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :sswitch_4
    const/16 p0, 0xf

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :sswitch_5
    const/16 p0, 0xa

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :sswitch_6
    const/16 p0, 0x9

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :sswitch_7
    const/16 p0, 0xc

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :sswitch_8
    const/16 p0, 0x8

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :sswitch_9
    const/16 p0, 0xb

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :sswitch_a
    const/16 p0, 0x15

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :sswitch_b
    const/16 p0, 0x12

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :sswitch_c
    const/16 p0, 0x10

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :sswitch_d
    const/16 p0, 0xe

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :sswitch_e
    const/16 p0, 0xd

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :sswitch_f
    const/4 p0, 0x7

    .line 57
    goto :goto_0

    .line 58
    :sswitch_10
    const/4 p0, 0x0

    .line 59
    goto :goto_0

    .line 60
    :sswitch_11
    const/4 p0, 0x1

    .line 61
    goto :goto_0

    .line 62
    :sswitch_12
    const/4 p0, 0x2

    .line 63
    goto :goto_0

    .line 64
    :sswitch_13
    const/4 p0, 0x4

    .line 65
    goto :goto_0

    .line 66
    :sswitch_14
    const/4 p0, 0x6

    .line 67
    goto :goto_0

    .line 68
    :sswitch_15
    const/4 p0, 0x5

    .line 69
    :goto_0
    return p0

    .line 70
    nop

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_15
        0x3180 -> :sswitch_14
        0x31f0 -> :sswitch_13
        0x8e08 -> :sswitch_12
        0x10006 -> :sswitch_11
        0x18e0e -> :sswitch_10
        0x1bffe -> :sswitch_f
        0x20000 -> :sswitch_e
        0x28e08 -> :sswitch_d
        0x30006 -> :sswitch_c
        0x38e0e -> :sswitch_b
        0x3bffe -> :sswitch_a
        0x84000 -> :sswitch_9
        0x871f0 -> :sswitch_8
        0x8ce08 -> :sswitch_7
        0x9ce0e -> :sswitch_6
        0x9fffe -> :sswitch_5
        0xa4000 -> :sswitch_4
        0xace08 -> :sswitch_3
        0xb4006 -> :sswitch_2
        0xbce0e -> :sswitch_1
        0xbfffe -> :sswitch_0
    .end sparse-switch
.end method

.method public static getRafFromNetworkType(I)I
    .locals 1

    const v0, 0x18e0e

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    goto/16 :goto_0

    :pswitch_0
    const v0, 0x94006

    goto :goto_0

    :pswitch_1
    const v0, 0xbfffe

    goto :goto_0

    :pswitch_2
    const v0, 0x3bffe

    goto :goto_0

    :pswitch_3
    const v0, 0xbce0e

    goto :goto_0

    :pswitch_4
    const v0, 0xace08

    goto :goto_0

    :pswitch_5
    const v0, 0x38e0e

    goto :goto_0

    :pswitch_6
    const v0, 0xb4006

    goto :goto_0

    :pswitch_7
    const v0, 0x30006

    goto :goto_0

    :pswitch_8
    const v0, 0xa4000

    goto :goto_0

    :pswitch_9
    const v0, 0x28e08

    goto :goto_0

    :pswitch_a
    const/high16 v0, 0x20000

    goto :goto_0

    :pswitch_b
    const v0, 0x8ce08

    goto :goto_0

    :pswitch_c
    const v0, 0x84000

    goto :goto_0

    :pswitch_d
    const v0, 0x9fffe

    goto :goto_0

    :pswitch_e
    const v0, 0x9ce0e

    goto :goto_0

    :pswitch_f
    const v0, 0x871f0

    goto :goto_0

    :pswitch_10
    const v0, 0x1bffe

    goto :goto_0

    :pswitch_11
    const/16 v0, 0x3180

    goto :goto_0

    :pswitch_12
    const/16 v0, 0x70

    goto :goto_0

    :pswitch_13
    const/16 v0, 0x31f0

    goto :goto_0

    :pswitch_14
    const v0, 0x8e08

    goto :goto_0

    :pswitch_15
    const v0, 0x10006

    :goto_0
    :pswitch_16
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static rafTypeFromString(Ljava/lang/String;)I
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "\\|"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    array-length v0, p0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v3, p0, v1

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x1

    .line 27
    if-ne v3, v4, :cond_0

    .line 28
    .line 29
    return v3

    .line 30
    :cond_0
    or-int/2addr v2, v3

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v2
.end method

.method public static singleRafTypeFromString(Ljava/lang/String;)I
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "EVDO_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v6, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "EVDO_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v6, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "EVDO_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v6, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v6, 0x12

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "IS95B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v6, 0x11

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "IS95A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    move v6, v1

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v6, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v6, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v6, 0xd

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "EHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v6, 0xc

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "1XRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v6, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v6, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    move v6, v2

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "EVDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v6, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v6, 0x6

    goto :goto_0

    :sswitch_10
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v6, 0x5

    goto :goto_0

    :sswitch_11
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    move v6, v3

    goto :goto_0

    :sswitch_12
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v6, 0x3

    goto :goto_0

    :sswitch_13
    const-string v0, "HS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    move v6, v4

    goto :goto_0

    :sswitch_14
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    move v6, v5

    goto :goto_0

    :sswitch_15
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    return v5

    :pswitch_0
    const/16 p0, 0x1000

    return p0

    :pswitch_1
    const/16 p0, 0x100

    return p0

    :pswitch_2
    const/16 p0, 0x80

    return p0

    :pswitch_3
    const p0, 0x8e08

    return p0

    :pswitch_4
    const/16 p0, 0x20

    return p0

    :pswitch_5
    return v1

    :pswitch_6
    const/16 p0, 0x400

    return p0

    :pswitch_7
    const p0, 0x8000

    return p0

    :pswitch_8
    const/16 p0, 0x200

    return p0

    :pswitch_9
    const/16 p0, 0x2000

    return p0

    :pswitch_a
    const/16 p0, 0x40

    return p0

    :pswitch_b
    return v2

    :pswitch_c
    const/16 p0, 0x800

    return p0

    :pswitch_d
    return v4

    :pswitch_e
    const/16 p0, 0x3180

    return p0

    :pswitch_f
    return v3

    :pswitch_10
    const/16 p0, 0x70

    return p0

    :pswitch_11
    const/16 p0, 0x4000

    return p0

    :pswitch_12
    const/high16 p0, 0x10000

    return p0

    :pswitch_13
    const p0, 0x8e00

    return p0

    :pswitch_14
    const/high16 p0, 0x20000

    return p0

    :pswitch_15
    const/high16 p0, 0x80000

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x798f2fe0 -> :sswitch_15
        -0x36280a07 -> :sswitch_14
        0x90b -> :sswitch_13
        0x114e1 -> :sswitch_12
        0x127bd -> :sswitch_11
        0x1f7db5 -> :sswitch_10
        0x2065bd -> :sswitch_f
        0x20a8fc -> :sswitch_e
        0x217cea -> :sswitch_d
        0x21fc3c -> :sswitch_c
        0x27cf17 -> :sswitch_b
        0x2dbbeab -> :sswitch_a
        0x3ee4e43 -> :sswitch_9
        0x41d604a -> :sswitch_8
        0x41d8b94 -> :sswitch_7
        0x41da01b -> :sswitch_6
        0x42b4b3b -> :sswitch_5
        0x42b4b3c -> :sswitch_4
        0x4e97a8c -> :sswitch_3
        0x7a9a65ad -> :sswitch_2
        0x7a9a65be -> :sswitch_1
        0x7a9a65bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneId()I
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return v0
.end method

.method public getRadioAccessFamily()I
    .locals 1

    iget v0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "{ mPhoneId = "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", mRadioAccessFamily = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    .line 20
    .line 21
    const-string/jumbo v2, "}"

    .line 22
    .line 23
    .line 24
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
