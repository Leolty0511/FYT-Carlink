.class public Lk0/tq$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tq;


# direct methods
.method public constructor <init>(Lk0/tq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tq$g;->a:Lk0/tq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/tq$g;->a:Lk0/tq;

    sget v1, Ly0/f;->Q0:I

    iput v1, v0, Lk0/tq;->q:I

    .line 2
    sget v1, Lu0/b;->D:I

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_2

    .line 3
    sget v1, Ly0/f;->Q0:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v0, v2}, Lk0/tq;->b3(Lk0/tq;Z)V

    goto :goto_0

    .line 5
    :cond_1
    sget v1, Lu0/b;->j4:I

    if-nez v1, :cond_3

    .line 6
    invoke-static {v0, v2}, Lk0/tq;->b3(Lk0/tq;Z)V

    goto :goto_0

    .line 7
    :cond_2
    iget-boolean v1, v0, Lk0/tq;->u:Z

    if-eqz v1, :cond_3

    .line 8
    invoke-static {v0, v2}, Lk0/tq;->b3(Lk0/tq;Z)V

    :cond_3
    :goto_0
    return-void
.end method
