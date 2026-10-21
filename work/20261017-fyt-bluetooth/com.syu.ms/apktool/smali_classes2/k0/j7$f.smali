.class public Lk0/j7$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j7;


# direct methods
.method public constructor <init>(Lk0/j7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j7$f;->a:Lk0/j7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/16 v0, 0xb

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v2, 0x0

    aput v1, v0, v2

    const/16 v1, 0x75

    const/4 v3, 0x1

    aput v1, v0, v3

    const/4 v1, 0x2

    const/16 v4, 0x8

    aput v4, v0, v1

    .line 1
    sget v5, Lu0/b;->a0:I

    const/16 v6, 0xa

    const/4 v7, 0x3

    if-ne v5, v3, :cond_7

    sget v5, Lu0/b;->j:I

    if-nez v5, :cond_7

    .line 2
    sget v5, Lu0/b;->D:I

    if-eqz v5, :cond_6

    const/4 v2, 0x6

    const/4 v8, 0x4

    const/4 v9, 0x5

    if-eq v5, v3, :cond_3

    if-eq v5, v1, :cond_2

    if-eq v5, v7, :cond_1

    if-eq v5, v9, :cond_0

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    aput v7, v0, v7

    goto :goto_1

    :pswitch_1
    aput v8, v0, v7

    goto :goto_1

    :cond_0
    aput v9, v0, v7

    goto :goto_1

    :cond_1
    aput v8, v0, v7

    goto :goto_1

    :cond_2
    aput v2, v0, v7

    goto :goto_1

    :cond_3
    aput v3, v0, v7

    .line 3
    sget v5, Lw0/d;->h:I

    const/high16 v10, 0x10000

    sub-int v11, v5, v10

    const/4 v12, 0x7

    if-eqz v11, :cond_5

    sub-int v11, v5, v10

    if-eq v3, v11, :cond_5

    sub-int/2addr v5, v10

    if-ne v1, v5, :cond_4

    goto :goto_0

    :cond_4
    aput v7, v0, v8

    .line 4
    sget v4, Lw0/d;->i:I

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    aput v5, v0, v9

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v2

    .line 5
    sget v2, Lw0/d;->j:I

    aput v2, v0, v12

    goto :goto_1

    :cond_5
    :goto_0
    aput v3, v0, v8

    .line 6
    sget v5, Lw0/d;->i:I

    div-int/lit8 v7, v5, 0xa

    shr-int/lit8 v4, v7, 0x8

    and-int/lit16 v4, v4, 0xff

    aput v4, v0, v9

    .line 7
    div-int/2addr v5, v6

    and-int/lit16 v4, v5, 0xff

    aput v4, v0, v2

    .line 8
    sget v2, Lw0/d;->j:I

    aput v2, v0, v12

    goto :goto_1

    :cond_6
    aput v2, v0, v7

    goto :goto_1

    :cond_7
    aput v2, v0, v7

    .line 9
    :goto_1
    sget v2, Ly0/f;->i:I

    if-eq v2, v3, :cond_9

    sget v2, Ly0/f;->C0:I

    if-nez v2, :cond_8

    goto :goto_2

    :cond_8
    aput v3, v0, v6

    goto :goto_3

    :cond_9
    :goto_2
    aput v1, v0, v6

    .line 10
    :goto_3
    invoke-static {v0}, Lz/k;->s([I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
