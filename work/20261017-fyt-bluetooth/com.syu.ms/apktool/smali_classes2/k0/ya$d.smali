.class public Lk0/ya$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ya;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ya;


# direct methods
.method public constructor <init>(Lk0/ya;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ya$d;->a:Lk0/ya;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lk0/ya$d;->a:Lk0/ya;

    iget v1, v0, Lk0/ya;->h:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ya;->h:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/16 v4, 0xe3

    const/4 v5, 0x0

    aput v4, v1, v5

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v6, 0x3

    .line 2
    sget v7, Lu0/b;->a0:I

    aput v7, v1, v6

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    new-array v1, v0, [I

    .line 4
    fill-array-data v1, :array_0

    invoke-static {v1}, Lz/k;->s([I)V

    .line 5
    sget v1, Lk0/nt;->a:I

    const/4 v6, -0x1

    sparse-switch v1, :sswitch_data_0

    move v2, v6

    goto :goto_0

    :sswitch_0
    const/16 v2, 0x9

    goto :goto_0

    :sswitch_1
    const/16 v2, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    move v2, v3

    goto :goto_0

    :sswitch_5
    move v2, v0

    goto :goto_0

    :sswitch_6
    move v2, v4

    goto :goto_0

    :sswitch_7
    move v2, v5

    :goto_0
    :sswitch_8
    if-eq v2, v6, :cond_1

    .line 6
    iget-object v0, p0, Lk0/ya$d;->a:Lk0/ya;

    invoke-static {v0, v2}, Lk0/ya;->h3(Lk0/ya;I)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, v0, Lk0/ya;->j:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/ya$d;->a:Lk0/ya;

    iput v3, v0, Lk0/ya;->h:I

    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xb0144 -> :sswitch_7
        0xc0144 -> :sswitch_8
        0xd0144 -> :sswitch_6
        0xe0144 -> :sswitch_5
        0xf0144 -> :sswitch_6
        0x100144 -> :sswitch_4
        0x110144 -> :sswitch_3
        0x120144 -> :sswitch_2
        0x130144 -> :sswitch_1
        0x140144 -> :sswitch_0
        0x150144 -> :sswitch_7
        0x160144 -> :sswitch_8
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x90
        0x1
        0x30
    .end array-data
.end method
