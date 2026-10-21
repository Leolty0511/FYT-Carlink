.class public Lg1/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg1/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lg1/c;


# direct methods
.method public constructor <init>(Lg1/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg1/c$a;->a:Lg1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lh0/e;->K()Z

    move-result v0

    .line 4
    sget v2, Lh0/c;->G:I

    const-string v3, "syu.bt.show.pip"

    if-ne v2, v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "true"

    .line 5
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez v0, :cond_2

    .line 6
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.syu.bt"

    .line 7
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 8
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-static {}, Lo1/u;->t()V

    :cond_3
    :goto_0
    return-void
.end method
