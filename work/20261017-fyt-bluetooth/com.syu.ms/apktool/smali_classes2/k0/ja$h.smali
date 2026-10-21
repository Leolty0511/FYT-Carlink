.class public Lk0/ja$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ja;


# direct methods
.method public constructor <init>(Lk0/ja;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ja$h;->a:Lk0/ja;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lh0/c;->E:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    move v0, v2

    goto :goto_1

    :pswitch_2
    move v0, v3

    goto :goto_1

    :goto_0
    :pswitch_3
    move v0, v4

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xf

    :goto_1
    const/16 v5, 0x3e

    new-array v5, v5, [I

    const/16 v6, -0x1d

    aput v6, v5, v4

    const/16 v6, -0x78

    aput v6, v5, v2

    const/16 v2, 0x3b

    aput v2, v5, v3

    aput v4, v5, v1

    const/4 v1, 0x4

    int-to-byte v0, v0

    aput v0, v5, v1

    .line 2
    sget v0, Lh0/c;->P:I

    div-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x5

    .line 3
    div-int/lit8 v2, v0, 0x3c

    aput v2, v5, v1

    const/4 v1, 0x6

    int-to-byte v0, v0

    .line 4
    rem-int/lit8 v0, v0, 0x3c

    aput v0, v5, v1

    const/4 v0, 0x7

    aput v3, v5, v0

    .line 5
    :try_start_0
    iget-object v0, p0, Lk0/ja$h;->a:Lk0/ja;

    const/16 v1, 0x24

    sget-object v2, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v5, v1, v2}, Lk0/ja;->s3(Lk0/ja;[IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 7
    :goto_2
    invoke-static {v5}, Lz/k;->s([I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
