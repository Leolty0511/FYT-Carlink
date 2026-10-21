.class final Landroid/os/RecoverySystem$2;
.super Landroid/os/IRecoverySystemProgressListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field lastProgress:I

.field lastPublishTime:J

.field final synthetic val$listener:Landroid/os/RecoverySystem$ProgressListener;

.field final synthetic val$progressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/RecoverySystem$ProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    .line 2
    .line 3
    iput-object p2, p0, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/IRecoverySystemProgressListener$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Landroid/os/RecoverySystem$2;->lastProgress:I

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iput-wide p1, p0, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public onProgress(I)V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroid/os/RecoverySystem$2;->val$progressHandler:Landroid/os/Handler;

    .line 6
    .line 7
    new-instance v3, Landroid/os/RecoverySystem$2$1;

    .line 8
    .line 9
    invoke-direct {v3, p0, p1, v0, v1}, Landroid/os/RecoverySystem$2$1;-><init>(Landroid/os/RecoverySystem$2;IJ)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
