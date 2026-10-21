.class Landroid/os/RecoverySystem$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/RecoverySystem$2;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/RecoverySystem$2;

.field final synthetic val$now:J

.field final synthetic val$progress:I


# direct methods
.method public constructor <init>(Landroid/os/RecoverySystem$2;IJ)V
    .locals 0

    iput-object p1, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    iput p2, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    iput-wide p3, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget v0, p0, Landroid/os/RecoverySystem$2$1;->val$progress:I

    .line 2
    .line 3
    iget-object v1, p0, Landroid/os/RecoverySystem$2$1;->this$0:Landroid/os/RecoverySystem$2;

    .line 4
    .line 5
    iget v2, v1, Landroid/os/RecoverySystem$2;->lastProgress:I

    .line 6
    .line 7
    if-le v0, v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, p0, Landroid/os/RecoverySystem$2$1;->val$now:J

    .line 10
    .line 11
    iget-wide v4, v1, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    .line 12
    .line 13
    sub-long v4, v2, v4

    .line 14
    .line 15
    const-wide/16 v6, 0x1f4

    .line 16
    .line 17
    cmp-long v4, v4, v6

    .line 18
    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    iput v0, v1, Landroid/os/RecoverySystem$2;->lastProgress:I

    .line 22
    .line 23
    iput-wide v2, v1, Landroid/os/RecoverySystem$2;->lastPublishTime:J

    .line 24
    .line 25
    iget-object v1, v1, Landroid/os/RecoverySystem$2;->val$listener:Landroid/os/RecoverySystem$ProgressListener;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
