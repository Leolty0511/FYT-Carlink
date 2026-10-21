.class public Lcom/android/fmradio/b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fmradio/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/fmradio/b;


# direct methods
.method public constructor <init>(Lcom/android/fmradio/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/fmradio/b$d;->a:Lcom/android/fmradio/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/fmradio/b$d;->a:Lcom/android/fmradio/b;

    iget v0, v0, Lcom/android/fmradio/b;->a:I

    sget v1, Lcom/android/fmradio/b;->a0:I

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/fmradio/b$d;->a:Lcom/android/fmradio/b;

    invoke-virtual {v0}, Lcom/android/fmradio/b;->m0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/fmradio/b$d;->a:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lcom/android/fmradio/b$d;->a:Lcom/android/fmradio/b;

    iget-object v0, v0, Lcom/android/fmradio/b;->J:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
