.class public Lcom/google/android/projection/sink/debug/DebugContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEYBOARD_LOCKOUT_AUTO:I = 0x0

.field public static final KEYBOARD_LOCKOUT_FORCE:I = 0x1

.field public static final KEYBOARD_LOCKOUT_OVERRIDE:I = 0x2


# instance fields
.field private mKeyboardLockoutMode:I

.field private final mSimulatedLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/projection/sink/debug/DebugContext;->mSimulatedLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getKeyboardLockoutMode()I
    .locals 1

    iget v0, p0, Lcom/google/android/projection/sink/debug/DebugContext;->mKeyboardLockoutMode:I

    return v0
.end method

.method public getSimulatedLocationProvider()Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/debug/DebugContext;->mSimulatedLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    return-object v0
.end method

.method public setKeyboardLockoutMode(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/projection/sink/debug/DebugContext;->mKeyboardLockoutMode:I

    return-void
.end method

.method public shutdown()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/projection/sink/debug/DebugContext;->mSimulatedLocationProvider:Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;

    invoke-virtual {v0}, Lcom/google/android/projection/sink/debug/SimulatedLocationProvider;->shutdown()V

    return-void
.end method
