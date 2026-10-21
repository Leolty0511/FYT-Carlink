.class public Lk0/tj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/tj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/tj;


# direct methods
.method public constructor <init>(Lk0/tj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/tj$a;->a:Lk0/tj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/tj$a;->a:Lk0/tj;

    iget v1, v0, Lk0/tj;->F:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/tj;->F:I

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 3
    sget v0, Lk0/nt;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_6
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, v0, Lk0/tj;->H:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lk0/tj$a;->a:Lk0/tj;

    iput v3, v0, Lk0/tj;->F:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd0
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
        0x2
        0x24
        0xf0
        0x10
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x15
        0x10
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x10
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x10
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x12
        0x10
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x10
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x10
    .end array-data
.end method
