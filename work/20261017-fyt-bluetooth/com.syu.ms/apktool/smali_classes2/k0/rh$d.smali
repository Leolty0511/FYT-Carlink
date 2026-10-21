.class public Lk0/rh$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/rh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/rh;


# direct methods
.method public constructor <init>(Lk0/rh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/rh$d;->a:Lk0/rh;

    iget v1, v0, Lk0/rh;->v:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/rh;->v:I

    const/4 v3, 0x5

    if-lez v1, :cond_2

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    .line 2
    sget v6, Lu0/b;->a0:I

    const/4 v7, 0x3

    aput v6, v1, v7

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_3

    new-array v1, v3, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    iget-object v1, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v1}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v2, v5}, Lo1/g0;->b(II)I

    move-result v6

    invoke-static {v1, v6}, Lk0/rh;->r3(Lk0/rh;I)V

    .line 6
    iget-object v1, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v1}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/rh;->s3(Lk0/rh;I)V

    .line 7
    iget-object v1, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v1}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v4

    const/16 v6, 0x3e8

    invoke-virtual {v4, v7, v6}, Lo1/g0;->b(II)I

    move-result v4

    invoke-static {v1, v4}, Lk0/rh;->t3(Lk0/rh;I)V

    .line 8
    iget-object v1, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v1}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v4

    invoke-virtual {v4, v0, v5}, Lo1/g0;->b(II)I

    move-result v0

    invoke-static {v1, v0}, Lk0/rh;->u3(Lk0/rh;I)V

    .line 9
    iget-object v0, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v0}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v1

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/rh;->v3(Lk0/rh;I)V

    .line 10
    iget-object v0, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v0}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v5}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/rh;->w3(Lk0/rh;I)V

    .line 11
    iget-object v0, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {v0}, Lk0/rh;->q3(Lk0/rh;)Lo1/g0;

    move-result-object v1

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v6}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/rh;->x3(Lk0/rh;I)V

    .line 12
    invoke-static {}, Lk0/rh;->l3()I

    move-result v0

    const/16 v1, 0xab

    if-ne v0, v2, :cond_1

    .line 13
    new-instance v0, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 15
    iget v3, v0, Landroid/text/format/Time;->year:I

    add-int/lit16 v3, v3, -0x7d0

    int-to-byte v3, v3

    .line 16
    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/2addr v4, v2

    int-to-byte v4, v4

    .line 17
    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    int-to-byte v0, v0

    shl-int/lit8 v3, v3, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v3, v6

    shl-int/lit8 v4, v4, 0x8

    const v6, 0xff00

    and-int/2addr v4, v6

    or-int/2addr v3, v4

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v3

    .line 18
    iget-object v3, p0, Lk0/rh$d;->a:Lk0/rh;

    invoke-static {}, Lk0/rh;->n3()I

    move-result v4

    invoke-static {}, Lk0/rh;->o3()I

    move-result v6

    invoke-static {v3, v4, v0, v6}, Lk0/rh;->p3(Lk0/rh;III)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v2, [I

    aput v2, v0, v5

    .line 19
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_0
    new-array v0, v2, [I

    aput v5, v0, v5

    .line 20
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    aput v5, v0, v5

    .line 21
    invoke-static {v1, v0}, Lk0/qt;->y0(I[I)V

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, v0, Lk0/rh;->x:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lk0/rh$d;->a:Lk0/rh;

    iput v3, v0, Lk0/rh;->v:I

    :cond_3
    :goto_0
    return-void

    :array_0
    .array-data 4
        0xe3
        0x83
        0x2
        0x10
        0x0
    .end array-data
.end method
