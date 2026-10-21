.class public Lk0/es$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/es;->W2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/es;


# direct methods
.method public constructor <init>(Lk0/es;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/es$c;->a:Lk0/es;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lk0/es$c;->a:Lk0/es;

    iget v0, p1, Lk0/es;->v:I

    sget v1, Ly0/f;->T0:I

    if-eq v0, v1, :cond_3

    .line 2
    iput v1, p1, Lk0/es;->v:I

    .line 3
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 4
    sget v0, Lu0/b;->D:I

    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 5
    sget v0, Ly0/f;->T0:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {p1, v1}, Lk0/es;->b3(Lk0/es;Z)V

    goto :goto_0

    .line 7
    :cond_1
    sget v0, Ly0/f;->Q0:I

    if-nez v0, :cond_3

    .line 8
    invoke-static {p1, v2}, Lk0/es;->b3(Lk0/es;Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-boolean v0, p1, Lk0/es;->x:Z

    if-eqz v0, :cond_3

    .line 10
    invoke-static {p1, v2}, Lk0/es;->b3(Lk0/es;Z)V

    nop

    :cond_3
    :goto_0
    return-void
.end method
