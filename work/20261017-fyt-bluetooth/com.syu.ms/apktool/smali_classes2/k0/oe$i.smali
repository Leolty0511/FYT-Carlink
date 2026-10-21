.class public Lk0/oe$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/oe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/oe;


# direct methods
.method public constructor <init>(Lk0/oe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/oe$i;->a:Lk0/oe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lk0/oe$i;->a:Lk0/oe;

    iget-byte v1, v0, Lk0/oe;->y:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/oe;->y:B

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v4, 0x0

    const/16 v5, 0xe3

    aput v5, v1, v4

    const/16 v4, 0x81

    aput v4, v1, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    const/4 v4, 0x3

    .line 2
    sget v5, Lu0/b;->a0:I

    aput v5, v1, v4

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_0

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

    :cond_0
    :goto_0
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-static {v0}, Lk0/oe;->f3(Lk0/oe;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lk0/oe$i;->a:Lk0/oe;

    iput-byte v3, v0, Lk0/oe;->y:B

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0xe3
        0x83
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x83
        0x1
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x83
        0x1
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x83
        0x1
        0x1
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x83
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x90
        0x2
        0x30
        0x0
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x90
        0x2
        0x27
        0x0
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x90
        0x2
        0x17
        0x0
    .end array-data
.end method
