.class public Lu0/d$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    invoke-static {}, Lu0/d;->l()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    sget v1, Lu0/b;->o:I

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0xc

    invoke-static {v1, v0}, Lu0/d;->I3(I[I)V

    return-void
.end method
