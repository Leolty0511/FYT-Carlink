.class public final Landroid/os/FactoryTest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FACTORY_TEST_HIGH_LEVEL:I = 0x2

.field public static final FACTORY_TEST_LOW_LEVEL:I = 0x1

.field public static final FACTORY_TEST_OFF:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMode()I
    .locals 1

    sget v0, Lcom/android/internal/os/RoSystemProperties;->FACTORYTEST:I

    return v0
.end method

.method public static isLongPressOnPowerOffEnabled()Z
    .locals 2

    .line 1
    const-string v0, "factory.long_press_power_off"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    :cond_0
    return v1
.end method
