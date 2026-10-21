.class Lcom/google/android/projection/protocol/GalVerificationVendorExtension$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/protocol/GalVerificationVendorExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/protocol/GalVerificationVendorExtension;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$1;->this$0:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$1;->this$0:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 3
    .line 4
    invoke-static {p1, p3}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->access$002(Lcom/google/android/projection/protocol/GalVerificationVendorExtension;I)I

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/google/android/projection/protocol/GalVerificationVendorExtension$1;->this$0:Lcom/google/android/projection/protocol/GalVerificationVendorExtension;

    .line 8
    .line 9
    invoke-static {p1, p4}, Lcom/google/android/projection/protocol/GalVerificationVendorExtension;->access$102(Lcom/google/android/projection/protocol/GalVerificationVendorExtension;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
