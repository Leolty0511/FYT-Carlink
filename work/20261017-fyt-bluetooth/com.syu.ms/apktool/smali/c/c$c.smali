.class public Lc/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c;->b(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/c;


# direct methods
.method public constructor <init>(Lc/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c$c;->a:Lc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    invoke-virtual {v0}, Lu0/i;->j3()I

    move-result v0

    .line 2
    sget v1, Lh0/c;->E:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    .line 3
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object v1

    invoke-virtual {v1}, Lh1/a;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    if-gtz v0, :cond_2

    .line 4
    :cond_0
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v1

    invoke-virtual {v1}, Lplugins/ZLink;->d0()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v1

    iget-boolean v1, v1, Lplugins/ZLink;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v2, 0x55

    goto :goto_1

    :cond_2
    :goto_0
    if-lez v0, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x6

    move v2, v0

    .line 5
    :cond_4
    :goto_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0}, Lc/e;->b()Lc/e;

    .line 6
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lc/e;->c(I)Z

    return-void
.end method
