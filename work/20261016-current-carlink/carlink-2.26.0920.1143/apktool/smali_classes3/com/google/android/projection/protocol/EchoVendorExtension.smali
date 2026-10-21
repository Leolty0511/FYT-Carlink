.class public Lcom/google/android/projection/protocol/EchoVendorExtension;
.super Lcom/google/android/projection/protocol/VendorExtensionBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;,
        Lcom/google/android/projection/protocol/EchoVendorExtension$EchoHandler;
    }
.end annotation


# static fields
.field private static final ECHO_DATA:I = 0x1

.field private static final SERVICE_NAME:Ljava/lang/String; = "com.example.android.projection.protocol.EchoVendorExtension"

.field private static final SERVICE_WHITELIST:[Ljava/lang/String;


# instance fields
.field private mEchoThread:Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "com.example.echovendor"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/projection/protocol/EchoVendorExtension;->SERVICE_WHITELIST:[Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/projection/protocol/VendorExtensionBase;-><init>()V

    return-void
.end method


# virtual methods
.method public create(IJ)Z
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;

    .line 2
    .line 3
    const-string v1, "echo"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension;->mEchoThread:Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->start()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/google/android/projection/protocol/EchoVendorExtension$EchoHandler;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/google/android/projection/protocol/EchoVendorExtension;->mEchoThread:Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->getLooper()Landroid/os/Looper;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, p0, v1}, Lcom/google/android/projection/protocol/EchoVendorExtension$EchoHandler;-><init>(Lcom/google/android/projection/protocol/EchoVendorExtension;Landroid/os/Looper;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension;->mHandler:Landroid/os/Handler;

    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/projection/protocol/VendorExtensionBase;->create(IJ)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension;->mEchoThread:Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/projection/protocol/EchoVendorExtension$LooperThread;->stopThread()V

    .line 7
    .line 8
    .line 9
    invoke-super {p0}, Lcom/google/android/projection/protocol/VendorExtensionBase;->destroy()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public getPackageWhitelist()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/projection/protocol/EchoVendorExtension;->SERVICE_WHITELIST:[Ljava/lang/String;

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.example.android.projection.protocol.EchoVendorExtension"

    return-object v0
.end method

.method public onMessage([B)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/projection/protocol/EchoVendorExtension;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 12
    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    array-length p1, p1

    .line 19
    :goto_0
    return p1
.end method
