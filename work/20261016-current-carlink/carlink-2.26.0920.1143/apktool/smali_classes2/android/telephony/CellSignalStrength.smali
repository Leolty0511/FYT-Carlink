.class public abstract Landroid/telephony/CellSignalStrength;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "good"

    .line 2
    .line 3
    const-string v1, "great"

    .line 4
    .line 5
    const-string v2, "none"

    .line 6
    .line 7
    const-string v3, "poor"

    .line 8
    .line 9
    const-string v4, "moderate"

    .line 10
    .line 11
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Landroid/telephony/CellSignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copy()Landroid/telephony/CellSignalStrength;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getAsuLevel()I
.end method

.method public abstract getDbm()I
.end method

.method public abstract getLevel()I
.end method

.method public abstract hashCode()I
.end method

.method public abstract setDefaultValues()V
.end method
