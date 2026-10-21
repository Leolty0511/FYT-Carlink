.class public Lk0/oh$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oh;


# direct methods
.method public constructor <init>(Lk0/oh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oh$b;->a:Lk0/oh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/oh$b;->a:Lk0/oh;

    iget-byte v1, v0, Lk0/oh;->e:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/oh;->e:B

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0xe3

    aput v4, v1, v3

    const/16 v3, 0x81

    aput v3, v1, v2

    const/4 v3, 0x2

    aput v2, v1, v3

    const/4 v3, 0x3

    .line 2
    sget v4, Lu0/b;->a0:I

    aput v4, v1, v3

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 4
    sget v1, Lk0/nt;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v0, [I

    .line 8
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v0, [I

    .line 9
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v0, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_7
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {v0}, Lk0/oh;->a3(Lk0/oh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/oh$b;->a:Lk0/oh;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/oh;->e:B

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xc7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0xf2
        0x1
        0x6
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xf2
        0x1
        0x5
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xf2
        0x1
        0x6
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xf2
        0x1
        0x5
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0xf2
        0x1
        0x4
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0xf2
        0x1
        0x2
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0xf2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0xf2
        0x1
        0x1
    .end array-data
.end method
