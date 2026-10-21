.class public Lk0/ch$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ch;
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
    iput-object p1, p0, Lk0/ch$f;->a:Lk0/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/ch$f;->a:Lk0/ch;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/ch;->o:I

    .line 2
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_1

    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lk0/ch$f;->a:Lk0/ch;

    iget-boolean v2, v0, Lk0/ch;->m:Z

    if-eqz v2, :cond_4

    .line 4
    invoke-static {v0, v1}, Lk0/ch;->k3(Lk0/ch;Z)V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget v0, Ly0/f;->Q0:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    iget-object v0, p0, Lk0/ch$f;->a:Lk0/ch;

    invoke-static {v0, v1}, Lk0/ch;->k3(Lk0/ch;Z)V

    goto :goto_1

    .line 7
    :cond_3
    sget v0, Lu0/b;->j4:I

    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lk0/ch$f;->a:Lk0/ch;

    invoke-static {v0, v1}, Lk0/ch;->k3(Lk0/ch;Z)V

    :cond_4
    :goto_1
    return-void
.end method
