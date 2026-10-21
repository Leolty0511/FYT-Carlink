.class public abstract Lcom/google/android/projection/protocol/VendorExtensionBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/projection/protocol/CarServiceProvider;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "AHU.VENDOR_EXTENSION"


# instance fields
.field protected final MESSAGE_SUCCESS:I

.field private mNativeVendorExtensionBase:J
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end field


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
    iput v0, p0, Lcom/google/android/projection/protocol/VendorExtensionBase;->MESSAGE_SUCCESS:I

    .line 6
    .line 7
    const-string v0, "VendorExtensionBase"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->dbgLog(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static dbgLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private native nativeInit(IJ)V
.end method

.method private native nativeSend([B)V
.end method

.method private native nativeShutdown()V
.end method


# virtual methods
.method public create(IJ)Z
    .locals 1

    .line 1
    const-string v0, "init"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->dbgLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/VendorExtensionBase;->nativeInit(IJ)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    const-string v0, "shutdown"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->dbgLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->nativeShutdown()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getNativeInstance()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/projection/protocol/VendorExtensionBase;->mNativeVendorExtensionBase:J

    return-wide v0
.end method

.method public abstract getPackageWhitelist()[Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract getServiceName()Ljava/lang/String;
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public abstract onMessage([B)I
    .annotation build Lcom/google/android/projection/common/UsedByNative;
    .end annotation
.end method

.method public sendData([B)V
    .locals 1

    .line 1
    const-string v0, "sendData"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->dbgLog(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/projection/protocol/VendorExtensionBase;->nativeSend([B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
