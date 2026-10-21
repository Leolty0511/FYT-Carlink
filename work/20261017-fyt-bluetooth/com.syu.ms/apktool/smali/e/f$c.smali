.class public Le/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/f;
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
    .locals 2

    .line 1
    invoke-static {}, Le/f;->d()I

    .line 2
    invoke-static {}, Le/f;->b()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lo1/u;->u()I

    const-string v0, "com.syu.screen.cali"

    .line 4
    invoke-static {v0}, Lo1/u;->f(Ljava/lang/String;)I

    .line 5
    invoke-static {}, Le/f;->e()Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Le/f;->p(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Le/f;->c(I)I

    .line 7
    invoke-static {v0}, Le/f;->f(I)I

    :cond_0
    return-void
.end method
