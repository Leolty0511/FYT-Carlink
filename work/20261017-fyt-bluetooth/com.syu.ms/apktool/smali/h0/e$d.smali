.class public Lh0/e$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/e;
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

    if-nez p1, :cond_0

    .line 1
    sget p1, Lh0/c;->G:I

    if-eqz p1, :cond_0

    sget p1, Lu0/b;->o:I

    if-nez p1, :cond_0

    sget-boolean p1, Lh0/c;->k0:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lh0/c;->l0:Z

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lplugins/ZLink;->Y()Lplugins/ZLink;

    move-result-object p1

    invoke-virtual {p1}, Lplugins/ZLink;->d0()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lh1/a;->d()Lh1/a;

    move-result-object p1

    invoke-virtual {p1}, Lh1/a;->f()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "com.syu.bt"

    .line 4
    invoke-static {p1}, Lo1/u;->f(Ljava/lang/String;)I

    :cond_0
    return-void
.end method
