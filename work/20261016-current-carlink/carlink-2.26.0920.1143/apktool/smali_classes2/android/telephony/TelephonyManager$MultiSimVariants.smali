.class public final enum Landroid/telephony/TelephonyManager$MultiSimVariants;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/TelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/telephony/TelephonyManager$MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

.field public static final enum UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 2
    .line 3
    const-string v1, "DSDS"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 10
    .line 11
    new-instance v1, Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 12
    .line 13
    const-string v3, "DSDA"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 20
    .line 21
    new-instance v3, Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 22
    .line 23
    const-string v5, "TSTS"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 30
    .line 31
    new-instance v5, Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 32
    .line 33
    const-string v7, "UNKNOWN"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Landroid/telephony/TelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Landroid/telephony/TelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

    .line 53
    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 1

    const-class v0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object p0
.end method

.method public static values()[Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 1

    sget-object v0, Landroid/telephony/TelephonyManager$MultiSimVariants;->$VALUES:[Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v0}, [Landroid/telephony/TelephonyManager$MultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v0
.end method
