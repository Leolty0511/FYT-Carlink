.class public Lk0/u8$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u8;


# direct methods
.method public constructor <init>(Lk0/u8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u8$f;->a:Lk0/u8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x5

    const/16 v2, 0xb

    const/4 v3, 0x3

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    move v0, v7

    move v8, v0

    move v9, v8

    move v10, v9

    move v11, v10

    :goto_0
    move v12, v11

    goto :goto_3

    :pswitch_0
    move v11, v4

    goto :goto_1

    :cond_0
    move v11, v2

    goto :goto_1

    :cond_1
    move v11, v1

    :goto_1
    move v0, v7

    move v8, v0

    move v9, v8

    move v10, v9

    move v12, v10

    goto :goto_3

    .line 2
    :cond_2
    sget v0, Lw0/d;->h:I

    const/high16 v8, 0x10000

    sub-int v9, v0, v8

    if-nez v9, :cond_3

    move v0, v6

    goto :goto_2

    :cond_3
    sub-int v9, v0, v8

    if-ne v6, v9, :cond_4

    move v0, v5

    goto :goto_2

    :cond_4
    sub-int v8, v0, v8

    if-ne v5, v8, :cond_5

    move v0, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v8, v0, 0x0

    if-nez v8, :cond_6

    const/16 v0, 0x11

    goto :goto_2

    :cond_6
    sub-int/2addr v0, v7

    if-ne v6, v0, :cond_7

    const/16 v0, 0x12

    goto :goto_2

    :cond_7
    move v0, v7

    .line 3
    :goto_2
    sget v8, Lw0/d;->i:I

    and-int/lit16 v9, v8, 0xff

    shr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    .line 4
    sget v10, Lw0/d;->j:I

    and-int/lit16 v10, v10, 0xff

    move v11, v6

    goto :goto_0

    :goto_3
    new-array v2, v2, [I

    const/16 v13, 0xe3

    aput v13, v2, v7

    const/16 v13, 0xc0

    aput v13, v2, v6

    aput v4, v2, v5

    aput v11, v2, v3

    const/4 v3, 0x4

    aput v12, v2, v3

    aput v0, v2, v1

    const/4 v0, 0x6

    aput v9, v2, v0

    const/4 v0, 0x7

    aput v8, v2, v0

    aput v10, v2, v4

    const/16 v0, 0x9

    aput v7, v2, v0

    const/16 v0, 0xa

    aput v7, v2, v0

    .line 5
    invoke-static {v2}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
