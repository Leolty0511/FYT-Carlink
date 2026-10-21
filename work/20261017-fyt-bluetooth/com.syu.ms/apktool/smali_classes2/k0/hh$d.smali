.class public Lk0/hh$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/hh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/hh;


# direct methods
.method public constructor <init>(Lk0/hh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/hh$d;->a:Lk0/hh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/hh$d;->a:Lk0/hh;

    iget-byte v1, v0, Lk0/hh;->h:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lk0/hh;->h:B

    if-lez v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v3, 0xe3

    aput v3, v0, v1

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 2
    sget v3, Lu0/b;->a0:I

    aput v3, v0, v1

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_1

    .line 4
    sget v0, Lk0/nt;->a:I

    const/4 v1, 0x6

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v1, [I

    .line 5
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v1, [I

    .line 6
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v0}, Lk0/hh;->c3(Lk0/hh;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lk0/hh$d;->a:Lk0/hh;

    const/4 v1, 0x5

    iput-byte v1, v0, Lk0/hh;->h:B

    :cond_1
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x401c5 -> :sswitch_1
        0x501c5 -> :sswitch_1
        0x601c5 -> :sswitch_0
        0x701c5 -> :sswitch_0
        0xd301c4 -> :sswitch_0
        0xf701b7 -> :sswitch_1
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x3
        0xc
        0x1
        0x0
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x3
        0xc
        0x0
        0x0
    .end array-data
.end method
