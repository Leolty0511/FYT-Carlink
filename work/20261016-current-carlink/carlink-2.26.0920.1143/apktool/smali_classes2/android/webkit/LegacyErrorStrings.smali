.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 3

    .line 1
    const v0, 0x1040260

    .line 2
    .line 3
    .line 4
    packed-switch p0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    const-string v1, "Using generic message for unknown error code: "

    .line 8
    .line 9
    const-string v2, "Http"

    .line 10
    .line 11
    invoke-static {v1, p0, v2}, Landroid/app/m;->A(Ljava/lang/String;ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return v0

    .line 15
    :pswitch_0
    const p0, 0x1040268

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_1
    return v0

    .line 20
    :pswitch_2
    const p0, 0x1040267

    .line 21
    .line 22
    .line 23
    return p0

    .line 24
    :pswitch_3
    const p0, 0x104026d

    .line 25
    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_4
    const p0, 0x1040261

    .line 29
    .line 30
    .line 31
    return p0

    .line 32
    :pswitch_5
    const p0, 0x1040269

    .line 33
    .line 34
    .line 35
    return p0

    .line 36
    :pswitch_6
    const p0, 0x1040262

    .line 37
    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_7
    const p0, 0x1040266

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_8
    const p0, 0x104026b

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_9
    const p0, 0x104026a

    .line 49
    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_a
    const p0, 0x1040008

    .line 53
    .line 54
    .line 55
    return p0

    .line 56
    :pswitch_b
    const p0, 0x1040263

    .line 57
    .line 58
    .line 59
    return p0

    .line 60
    :pswitch_c
    const p0, 0x1040007

    .line 61
    .line 62
    .line 63
    return p0

    .line 64
    :pswitch_d
    const p0, 0x1040264

    .line 65
    .line 66
    .line 67
    return p0

    .line 68
    :pswitch_e
    const p0, 0x1040265

    .line 69
    .line 70
    .line 71
    return p0

    .line 72
    :pswitch_f
    const p0, 0x104026c

    .line 73
    .line 74
    .line 75
    return p0

    .line 76
    nop

    .line 77
    :pswitch_data_0
    .packed-switch -0xf
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

.method public static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
