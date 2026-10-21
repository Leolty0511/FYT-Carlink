.class public Lk0/yk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yk;


# direct methods
.method public constructor <init>(Lk0/yk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yk$c;->a:Lk0/yk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/yk$c;->a:Lk0/yk;

    iget v1, v0, Lk0/yk;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/yk;->j:I

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 3
    sget v0, Lk0/nt;->c:I

    const/4 v1, 0x5

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-array v0, v1, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_1
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_2
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_3
    new-array v0, v1, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_4
    new-array v0, v1, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :pswitch_5
    new-array v0, v1, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v0, Lk0/yk;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 11
    iget-object v0, p0, Lk0/yk$c;->a:Lk0/yk;

    const/4 v1, 0x7

    iput v1, v0, Lk0/yk;->j:I

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
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
        0x1
        0x32
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x30
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x31
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x30
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x30
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0x1
        0x30
    .end array-data
.end method
