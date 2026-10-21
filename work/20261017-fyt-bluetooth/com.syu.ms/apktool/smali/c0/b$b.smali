.class public Lc0/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc0/b;
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
.method public R(Z)V
    .locals 0

    if-nez p1, :cond_2

    .line 1
    sget p1, Lu0/b;->o:I

    if-eqz p1, :cond_0

    const-string p1, "com.syu.back"

    .line 2
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lh0/c;->G:I

    if-eqz p1, :cond_2

    sget-boolean p1, Lh0/c;->l0:Z

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Lh0/e;->K()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Lo1/u;->t()V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lo1/u;->s()V

    :cond_2
    :goto_0
    return-void
.end method
