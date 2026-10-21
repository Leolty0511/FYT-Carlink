.class public Ld1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld1/g;


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:Ljava/lang/Runnable;

.field public c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ld1/c$a;

    invoke-direct {v0, p0}, Ld1/c$a;-><init>(Ld1/c;)V

    iput-object v0, p0, Ld1/c;->a:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Ld1/c$b;

    invoke-direct {v0, p0}, Ld1/c$b;-><init>(Ld1/c;)V

    iput-object v0, p0, Ld1/c;->b:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Ld1/c$c;

    invoke-direct {v0, p0}, Ld1/c$c;-><init>(Ld1/c;)V

    iput-object v0, p0, Ld1/c;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    sget-object v0, Ly0/g;->u:Lo1/y;

    iget-object v1, p0, Ld1/c;->a:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object v0, Lz/c;->b:Lo1/y;

    iget-object v1, p0, Ld1/c;->b:Ljava/lang/Runnable;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object v0, Lz/c;->a:Lo1/y;

    iget-object v1, p0, Ld1/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Ly0/g;->u:Lo1/y;

    iget-object v1, p0, Ld1/c;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 2
    sget-object v0, Lz/c;->b:Lo1/y;

    iget-object v1, p0, Ld1/c;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    .line 3
    sget-object v0, Lz/c;->a:Lo1/y;

    iget-object v1, p0, Ld1/c;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/16 v0, 0x80

    .line 1
    invoke-virtual {p0, v0}, Ld1/c;->e(I)V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e(I)V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0xcc

    aput v2, v0, v1

    const/16 v1, 0xa5

    const/4 v2, 0x2

    aput v1, v0, v2

    const/4 v1, 0x3

    aput p1, v0, v1

    const/16 p1, 0x2a

    const/4 v3, 0x4

    aput p1, v0, v3

    .line 1
    aget p1, v0, v2

    aget v1, v0, v1

    add-int/2addr p1, v1

    aget v1, v0, v3

    add-int/2addr p1, v1

    and-int/lit16 p1, p1, 0xff

    const/4 v1, 0x5

    aput p1, v0, v1

    .line 2
    invoke-static {v0}, Lz/k;->o([I)V

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    const/16 v0, 0x81

    .line 1
    invoke-virtual {p0, v0}, Ld1/c;->e(I)V

    return-void
.end method

.method public h(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const/16 p1, 0x90

    .line 1
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto/16 :goto_0

    :pswitch_1
    const/16 p1, 0x99

    .line 2
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto/16 :goto_0

    :pswitch_2
    const/16 p1, 0x98

    .line 3
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto/16 :goto_0

    :pswitch_3
    const/16 p1, 0x97

    .line 4
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto/16 :goto_0

    :pswitch_4
    const/16 p1, 0x96

    .line 5
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto/16 :goto_0

    :pswitch_5
    const/16 p1, 0x95

    .line 6
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x94

    .line 7
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x93

    .line 8
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x92

    .line 9
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x91

    .line 10
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_a
    const/16 p1, 0xc4

    .line 11
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_b
    const/16 p1, 0x89

    .line 12
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_c
    const/16 p1, 0x9e

    .line 13
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_d
    const/16 p1, 0x9b

    .line 14
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_e
    const/16 p1, 0x87

    .line 15
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_f
    const/16 p1, 0x85

    .line 16
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_10
    const/16 p1, 0x9f

    .line 17
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_11
    const/16 p1, 0x81

    .line 18
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_12
    const/16 p1, 0x82

    .line 19
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_13
    const/16 p1, 0x80

    .line 20
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    goto :goto_0

    :pswitch_14
    const/16 p1, 0x83

    .line 21
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public i()V
    .locals 0

    return-void
.end method

.method public j(III)V
    .locals 0

    return-void
.end method

.method public k(I)V
    .locals 2

    const/4 v0, 0x3

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-array p1, v0, [I

    .line 1
    fill-array-data p1, :array_0

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_1
    new-array p1, v0, [I

    .line 2
    fill-array-data p1, :array_1

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_2
    new-array p1, v0, [I

    .line 3
    fill-array-data p1, :array_2

    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_3
    new-array p1, v0, [I

    .line 4
    fill-array-data p1, :array_3

    invoke-static {p1}, Lz/k;->s([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0xa3
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0xa2
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0xa1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0xa0
    .end array-data
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m(I)V
    .locals 0

    add-int/lit16 p1, p1, 0x90

    .line 1
    invoke-virtual {p0, p1}, Ld1/c;->e(I)V

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method
