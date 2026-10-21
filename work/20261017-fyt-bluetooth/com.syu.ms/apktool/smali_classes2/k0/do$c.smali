.class public Lk0/do$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/do;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/do;


# direct methods
.method public constructor <init>(Lk0/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/do$c;->a:Lk0/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lk0/do$c;->a:Lk0/do;

    iget v1, v0, Lk0/do;->i:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/do;->i:I

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

    const/4 v2, 0x3

    .line 2
    sget v3, Lu0/b;->a0:I

    aput v3, v1, v2

    invoke-static {v1}, Lz/k;->s([I)V

    .line 3
    sget v1, Lk0/nt;->a:I

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v0, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_3
    new-array v0, v0, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lk0/do;->k:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 9
    iget-object v0, p0, Lk0/do$c;->a:Lk0/do;

    const/4 v1, 0x5

    iput v1, v0, Lk0/do;->i:I

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0xbe01c5 -> :sswitch_3
        0xc501c4 -> :sswitch_2
        0xc601c4 -> :sswitch_1
        0xc701c4 -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xe2
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xe2
        0x1
        0x2
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xe2
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0xe2
        0x1
        0x4
    .end array-data
.end method
