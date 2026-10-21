.class public Lk0/ch$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/ch;->S2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ch;


# direct methods
.method public constructor <init>(Lk0/ch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ch$g;->a:Lk0/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lk0/ch$g;->a:Lk0/ch;

    iget v0, p1, Lk0/ch;->q:I

    sget v1, Ly0/f;->T0:I

    if-eq v0, v1, :cond_4

    .line 2
    iput v1, p1, Lk0/ch;->q:I

    .line 3
    sget p1, Lh0/c;->E:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    .line 4
    sget p1, Lu0/b;->D:I

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    invoke-static {}, Lo1/u;->a0()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lk0/ch$g;->a:Lk0/ch;

    iget-boolean v0, p1, Lk0/ch;->m:Z

    if-eqz v0, :cond_4

    .line 6
    invoke-static {p1, v1}, Lk0/ch;->k3(Lk0/ch;Z)V

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    sget p1, Ly0/f;->T0:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lk0/ch$g;->a:Lk0/ch;

    invoke-static {p1, v0}, Lk0/ch;->k3(Lk0/ch;Z)V

    goto :goto_1

    .line 9
    :cond_3
    sget p1, Ly0/f;->Q0:I

    if-nez p1, :cond_4

    .line 10
    iget-object p1, p0, Lk0/ch$g;->a:Lk0/ch;

    invoke-static {p1, v1}, Lk0/ch;->k3(Lk0/ch;Z)V

    nop

    :cond_4
    :goto_1
    return-void
.end method
