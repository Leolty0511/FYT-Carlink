.class public Ly0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public b([I)V
    .locals 5

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    .line 1
    aget v1, p1, v1

    if-gt v0, v1, :cond_0

    .line 2
    sget-object v1, Ly0/f;->N0:[I

    aget v2, p1, v0

    sget-object v3, Ly0/f;->c0:[I

    aget v4, p1, v0

    aget v3, v3, v4

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c([I)V
    .locals 5

    .line 1
    sget v0, Ly0/f;->a:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    const/4 v2, 0x0

    .line 2
    aget v2, p1, v2

    if-gt v1, v2, :cond_2

    .line 3
    aget v2, p1, v1

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    sget v2, Ly0/f;->l:I

    mul-int/lit8 v2, v2, 0x10

    sget v3, Ly0/f;->m:I

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    div-int/2addr v2, v3

    sput v2, Ly0/f;->M0:I

    goto :goto_1

    .line 5
    :cond_1
    sget v2, Ly0/f;->j:I

    mul-int/lit8 v2, v2, 0x10

    sget v3, Ly0/f;->k:I

    shr-int/lit8 v4, v3, 0x1

    add-int/2addr v2, v4

    div-int/2addr v2, v3

    sput v2, Ly0/f;->L0:I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public d()V
    .locals 3

    .line 1
    sget v0, Ly0/f;->c:I

    sget v1, Ly0/f;->g:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lo1/o0;->a(III)I

    move-result v0

    sput v0, Ly0/f;->C0:I

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g([I)V
    .locals 0

    return-void
.end method

.method public h(I)V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j([I)V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l(I)V
    .locals 0

    return-void
.end method

.method public m(II)V
    .locals 0

    return-void
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public o(I)V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method
