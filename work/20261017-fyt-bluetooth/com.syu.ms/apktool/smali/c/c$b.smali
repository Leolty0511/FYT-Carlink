.class public Lc/c$b;
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
    iput-object p1, p0, Lc/c$b;->a:Lc/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    invoke-virtual {v0}, Lplugins/ZLink;->d0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object v0

    iget-boolean v0, v0, Lplugins/ZLink;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x57

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x5

    .line 3
    :goto_1
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1}, Lc/e;->b()Lc/e;

    .line 4
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/e;->c(I)Z

    return-void
.end method
