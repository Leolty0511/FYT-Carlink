.class public Lk0/lj$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/lj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/lj;


# direct methods
.method public constructor <init>(Lk0/lj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/lj$b;->a:Lk0/lj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/lj$b;->a:Lk0/lj;

    iget-byte v1, v0, Lk0/lj;->f:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/lj;->f:B

    const/4 v3, 0x5

    if-lez v1, :cond_0

    .line 2
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 3
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lk0/lj;->a3(Lk0/lj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/lj$b;->a:Lk0/lj;

    iput-byte v3, v0, Lk0/lj;->f:B

    :cond_1
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1201bb -> :sswitch_2
        0x3a01be -> :sswitch_1
        0x4801bb -> :sswitch_2
        0x4b01bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x4
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x4
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0xa
        0x4
    .end array-data
.end method
