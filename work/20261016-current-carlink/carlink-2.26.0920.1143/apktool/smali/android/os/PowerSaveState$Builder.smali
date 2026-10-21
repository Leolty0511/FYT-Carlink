.class public final Landroid/os/PowerSaveState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerSaveState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBatterySaverEnabled:Z

.field private mBrightnessFactor:F

.field private mGlobalBatterySaverEnabled:Z

.field private mGpsMode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    .line 8
    .line 9
    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mGpsMode:I

    .line 10
    .line 11
    const/high16 v0, 0x3f000000    # 0.5f

    .line 12
    .line 13
    iput v0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic access$000(Landroid/os/PowerSaveState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return p0
.end method

.method public static synthetic access$100(Landroid/os/PowerSaveState$Builder;)I
    .locals 0

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mGpsMode:I

    return p0
.end method

.method public static synthetic access$200(Landroid/os/PowerSaveState$Builder;)F
    .locals 0

    iget p0, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return p0
.end method

.method public static synthetic access$300(Landroid/os/PowerSaveState$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return p0
.end method


# virtual methods
.method public build()Landroid/os/PowerSaveState;
    .locals 1

    new-instance v0, Landroid/os/PowerSaveState;

    invoke-direct {v0, p0}, Landroid/os/PowerSaveState;-><init>(Landroid/os/PowerSaveState$Builder;)V

    return-object v0
.end method

.method public setBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mBatterySaverEnabled:Z

    return-object p0
.end method

.method public setBrightnessFactor(F)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mBrightnessFactor:F

    return-object p0
.end method

.method public setGlobalBatterySaverEnabled(Z)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/os/PowerSaveState$Builder;->mGlobalBatterySaverEnabled:Z

    return-object p0
.end method

.method public setGpsMode(I)Landroid/os/PowerSaveState$Builder;
    .locals 0

    iput p1, p0, Landroid/os/PowerSaveState$Builder;->mGpsMode:I

    return-object p0
.end method
