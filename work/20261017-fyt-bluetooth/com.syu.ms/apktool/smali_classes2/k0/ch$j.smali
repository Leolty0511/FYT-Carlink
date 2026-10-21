.class public Lk0/ch$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ch;


# direct methods
.method public constructor <init>(Lk0/ch;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ch$j;->a:Lk0/ch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lk0/ch$j;->a:Lk0/ch;

    iget v1, v0, Lk0/ch;->z:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/ch;->z:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/16 v1, 0xe3

    const/4 v4, 0x0

    aput v1, v0, v4

    const/16 v1, 0x81

    aput v1, v0, v2

    const/4 v1, 0x2

    aput v2, v0, v1

    const/4 v5, 0x3

    .line 2
    sget v6, Lu0/b;->a0:I

    aput v6, v0, v5

    invoke-static {v0}, Lz/k;->s([I)V

    .line 3
    iget-object v0, p0, Lk0/ch$j;->a:Lk0/ch;

    invoke-static {v0}, Lk0/ch;->l3(Lk0/ch;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lo1/g0;->b(II)I

    move-result v5

    invoke-static {v0, v5}, Lk0/ch;->m3(Lk0/ch;I)V

    .line 4
    iget-object v0, p0, Lk0/ch$j;->a:Lk0/ch;

    invoke-static {v0}, Lk0/ch;->l3(Lk0/ch;)Lo1/g0;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ch;->n3(Lk0/ch;I)V

    .line 5
    sget v0, Lu0/b;->a0:I

    if-ne v0, v2, :cond_2

    .line 6
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    .line 10
    :goto_0
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_1

    :sswitch_3
    const-string v0, "/sys/fytver/fyt_bin_version"

    .line 11
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Ls18"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    invoke-static {v0}, Lk0/qt;->n0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lt18"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    :cond_0
    iget-object v0, p0, Lk0/ch$j;->a:Lk0/ch;

    invoke-static {v0}, Lk0/ch;->l3(Lk0/ch;)Lo1/g0;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ch;->o3(Lk0/ch;I)V

    .line 14
    iget-object v0, p0, Lk0/ch$j;->a:Lk0/ch;

    invoke-static {v0}, Lk0/ch;->l3(Lk0/ch;)Lo1/g0;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v4}, Lo1/g0;->b(II)I

    move-result v1

    invoke-static {v0, v1}, Lk0/ch;->p3(Lk0/ch;I)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, v0, Lk0/ch;->B:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 16
    iget-object v0, p0, Lk0/ch$j;->a:Lk0/ch;

    iput v3, v0, Lk0/ch;->z:I

    :cond_2
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1d01c6 -> :sswitch_2
        0x2701c6 -> :sswitch_1
        0x3401b7 -> :sswitch_1
        0x5f01b7 -> :sswitch_1
        0x6001b7 -> :sswitch_2
        0x6201b7 -> :sswitch_1
        0x9601c7 -> :sswitch_1
        0x9701c7 -> :sswitch_2
        0x9801c7 -> :sswitch_2
        0x9d01c7 -> :sswitch_2
        0xbf01c7 -> :sswitch_0
        0xc001c7 -> :sswitch_0
        0xce01c7 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1d01c6 -> :sswitch_3
        0x6201b7 -> :sswitch_3
        0x9601c7 -> :sswitch_3
        0x9701c7 -> :sswitch_3
        0x9801c7 -> :sswitch_3
        0x9d01c7 -> :sswitch_3
        0xbf01c7 -> :sswitch_3
        0xc001c7 -> :sswitch_3
        0xce01c7 -> :sswitch_3
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0xc6
        0x2
        0x13
        0x2
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0xc6
        0x2
        0x13
        0x0
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0xc6
        0x2
        0x13
        0x1
    .end array-data
.end method
