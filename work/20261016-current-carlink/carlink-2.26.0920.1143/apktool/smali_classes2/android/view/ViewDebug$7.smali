.class final Landroid/view/ViewDebug$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ViewDebug;->dumpv2(Landroid/view/View;Ljava/io/ByteArrayOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$encoder:Landroid/view/ViewHierarchyEncoder;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/ViewHierarchyEncoder;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    iput-object p2, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    iput-object p3, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    .line 4
    .line 5
    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 6
    .line 7
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 8
    .line 9
    const-string/jumbo v2, "window:left"

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    .line 18
    .line 19
    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 20
    .line 21
    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 22
    .line 23
    const-string/jumbo v2, "window:top"

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v2, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$view:Landroid/view/View;

    .line 30
    .line 31
    iget-object v1, p0, Landroid/view/ViewDebug$7;->val$encoder:Landroid/view/ViewHierarchyEncoder;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->encode(Landroid/view/ViewHierarchyEncoder;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Landroid/view/ViewDebug$7;->val$latch:Ljava/util/concurrent/CountDownLatch;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
