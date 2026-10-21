.class public Lk0/ll$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ll;


# direct methods
.method public constructor <init>(Lk0/ll;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ll$h;->a:Lk0/ll;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/ll$h;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->j0:I

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/ll;->j0:I

    goto :goto_0

    .line 3
    :cond_0
    iget v1, v0, Lk0/ll;->P:I

    if-nez v1, :cond_2

    .line 4
    sget v1, Ly0/f;->Q0:I

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0, v2}, Lk0/ll;->e3(Lk0/ll;Z)V

    .line 6
    :cond_2
    :goto_0
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x6

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4

    .line 7
    iget-object v0, p0, Lk0/ll$h;->a:Lk0/ll;

    iget v0, v0, Lk0/ll;->J:I

    if-nez v0, :cond_3

    sget v0, Lu0/b;->o:I

    if-ne v0, v2, :cond_3

    .line 8
    invoke-static {v3}, Lk0/qt;->a(I)V

    .line 9
    :cond_3
    sget-object v0, La/b;->Q:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->S(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lk0/ll$h;->a:Lk0/ll;

    iget v0, v0, Lk0/ll;->J:I

    if-nez v0, :cond_5

    const/4 v0, 0x5

    .line 10
    invoke-static {v0, v3}, Ll0/b0;->l0(II)V

    .line 11
    invoke-static {v0, v2}, Ll0/b0;->l0(II)V

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lk0/ll$h;->a:Lk0/ll;

    iget v1, v0, Lk0/ll;->J:I

    if-nez v1, :cond_5

    iget v0, v0, Lk0/ll;->L:I

    if-ne v0, v2, :cond_5

    .line 13
    sget-object v0, Lk0/nt;->f:[Lo1/x;

    const/16 v1, 0x7d

    new-array v2, v2, [I

    aput v3, v2, v3

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lo1/x;->C([Lo1/x;I[I[F[Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
