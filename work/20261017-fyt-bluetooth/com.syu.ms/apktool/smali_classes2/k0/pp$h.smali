.class public Lk0/pp$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/pp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/pp;


# direct methods
.method public constructor <init>(Lk0/pp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/pp$h;->a:Lk0/pp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/16 v0, 0xa

    new-array v1, v0, [I

    const/16 v2, 0xc0

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    const/16 v4, 0x8

    aput v4, v1, v2

    .line 1
    sget v5, Lu0/b;->D:I

    const/16 v6, 0x13

    const/16 v7, 0xb

    const/4 v8, 0x6

    const/4 v9, 0x7

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x5

    const/4 v13, 0x4

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    aput v9, v1, v11

    goto/16 :goto_1

    :pswitch_1
    aput v4, v1, v11

    aput v6, v1, v10

    .line 2
    sget v2, Lu0/b;->u3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v1, v13

    .line 3
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v12

    .line 4
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v1, v8

    .line 5
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto/16 :goto_1

    :pswitch_2
    aput v9, v1, v11

    goto/16 :goto_1

    :pswitch_3
    aput v7, v1, v11

    aput v6, v1, v10

    .line 6
    sget v2, Lu0/b;->u3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v1, v13

    .line 7
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v12

    .line 8
    sget v2, Lu0/b;->t3:I

    div-int/lit8 v4, v2, 0x3c

    aput v4, v1, v8

    .line 9
    rem-int/lit8 v2, v2, 0x3c

    aput v2, v1, v9

    goto/16 :goto_1

    :pswitch_4
    aput v12, v1, v11

    const/16 v4, 0x40

    aput v4, v1, v10

    .line 10
    sget v4, Lh0/c;->E:I

    if-eq v4, v11, :cond_3

    if-eq v4, v10, :cond_2

    if-eq v4, v13, :cond_1

    if-eq v4, v12, :cond_0

    aput v3, v1, v13

    aput v13, v1, v12

    goto :goto_1

    :cond_0
    aput v2, v1, v13

    aput v10, v1, v12

    goto :goto_1

    :cond_1
    aput v2, v1, v13

    aput v2, v1, v12

    goto :goto_1

    :cond_2
    aput v2, v1, v13

    aput v11, v1, v12

    goto :goto_1

    :cond_3
    aput v2, v1, v13

    aput v13, v1, v12

    goto :goto_1

    :pswitch_5
    aput v2, v1, v11

    aput v2, v1, v10

    .line 11
    sget v5, Lw0/d;->j:I

    .line 12
    sget v6, Lw0/d;->h:I

    const/high16 v14, 0x10000

    if-ne v6, v14, :cond_4

    aput v2, v1, v13

    goto :goto_0

    :cond_4
    const v14, 0x10001

    if-ne v6, v14, :cond_5

    aput v11, v1, v13

    goto :goto_0

    :cond_5
    const v11, 0x10002

    if-ne v6, v11, :cond_6

    aput v10, v1, v13

    goto :goto_0

    :cond_6
    if-nez v6, :cond_7

    const/16 v2, 0x11

    aput v2, v1, v13

    goto :goto_0

    :cond_7
    if-ne v6, v2, :cond_8

    const/16 v2, 0x12

    aput v2, v1, v13

    .line 13
    :cond_8
    :goto_0
    sget v2, Lw0/d;->i:I

    and-int/lit16 v6, v2, 0xff

    aput v6, v1, v12

    shr-int/2addr v2, v4

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v8

    .line 14
    rem-int/lit8 v2, v5, 0x6

    if-nez v2, :cond_9

    if-eqz v5, :cond_9

    aput v8, v1, v9

    goto :goto_1

    :cond_9
    aput v2, v1, v9

    :goto_1
    new-array v2, v7, [I

    const/16 v4, 0xe3

    aput v4, v2, v3

    :goto_2
    if-ge v3, v0, :cond_a

    add-int/lit8 v4, v3, 0x1

    .line 15
    aget v3, v1, v3

    aput v3, v2, v4

    move v3, v4

    goto :goto_2

    .line 16
    :cond_a
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
