.class public Li1/w$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li1/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li1/w;


# direct methods
.method public constructor <init>(Li1/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li1/w$d;->a:Li1/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 10

    .line 1
    :try_start_0
    check-cast p1, [I

    .line 2
    iget-object v0, p0, Li1/w$d;->a:Li1/w;

    iget-object v0, v0, Li1/w;->m:[I

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    const/4 v0, 0x1

    .line 3
    aget v1, p1, v0

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    .line 4
    aput v2, p1, v0

    :cond_0
    const/4 v1, 0x0

    .line 5
    aget v3, p1, v1

    const/4 v4, 0x3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->B:I

    goto :goto_0

    .line 7
    :pswitch_1
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->A:I

    goto :goto_0

    .line 8
    :pswitch_2
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->z:I

    goto :goto_0

    .line 9
    :pswitch_3
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->y:I

    goto :goto_0

    .line 10
    :pswitch_4
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->x:I

    goto :goto_0

    .line 11
    :pswitch_5
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->w:I

    goto :goto_0

    .line 12
    :pswitch_6
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->v:I

    goto :goto_0

    .line 13
    :pswitch_7
    iget-object v3, p0, Li1/w$d;->a:Li1/w;

    aget p1, p1, v0

    rsub-int/lit8 p1, p1, 0xa

    mul-int/2addr p1, v4

    div-int/2addr p1, v2

    iput p1, v3, Li1/w;->u:I

    .line 14
    :goto_0
    iget-object p1, p0, Li1/w$d;->a:Li1/w;

    iget v3, p1, Li1/w;->u:I

    and-int/2addr v3, v4

    iget v5, p1, Li1/w;->v:I

    const/4 v6, 0x2

    shl-int/2addr v5, v6

    and-int/lit8 v5, v5, 0xc

    or-int/2addr v3, v5

    iget v5, p1, Li1/w;->w:I

    const/4 v7, 0x4

    shl-int/2addr v5, v7

    and-int/lit8 v5, v5, 0x30

    or-int/2addr v3, v5

    iget v5, p1, Li1/w;->x:I

    const/4 v8, 0x6

    shl-int/2addr v5, v8

    and-int/lit16 v5, v5, 0xc0

    or-int/2addr v3, v5

    iput v3, p1, Li1/w;->k:I

    .line 15
    iget v5, p1, Li1/w;->y:I

    and-int/2addr v5, v4

    iget v9, p1, Li1/w;->z:I

    shl-int/2addr v9, v6

    and-int/lit8 v9, v9, 0xc

    or-int/2addr v5, v9

    iget v9, p1, Li1/w;->A:I

    shl-int/2addr v9, v7

    and-int/lit8 v9, v9, 0x30

    or-int/2addr v5, v9

    iget v9, p1, Li1/w;->B:I

    shl-int/2addr v9, v8

    and-int/lit16 v9, v9, 0xc0

    or-int/2addr v5, v9

    iput v5, p1, Li1/w;->l:I

    .line 16
    sget-boolean v9, Li1/w;->G:Z

    if-eqz v9, :cond_1

    new-array v2, v2, [I

    aput v4, v2, v1

    const/16 v1, 0x8

    aput v1, v2, v0

    iget v0, p1, Li1/w;->g:I

    aput v0, v2, v6

    iget v0, p1, Li1/w;->h:I

    aput v0, v2, v4

    iget v0, p1, Li1/w;->i:I

    aput v0, v2, v7

    const/4 v0, 0x5

    iget v4, p1, Li1/w;->j:I

    aput v4, v2, v0

    aput v3, v2, v8

    const/4 v0, 0x7

    aput v5, v2, v0

    iget v0, p1, Li1/w;->n:I

    aput v0, v2, v1

    const/16 v0, 0x9

    iget v1, p1, Li1/w;->o:I

    aput v1, v2, v0

    invoke-virtual {p1, v2}, Li1/w;->h([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
