.class public Lk0/nk$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nk;


# direct methods
.method public constructor <init>(Lk0/nk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nk$e;->a:Lk0/nk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lk0/nk$e;->a:Lk0/nk;

    iget v1, v0, Lk0/nk;->o:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/nk;->o:I

    const/4 v3, 0x5

    if-lez v1, :cond_1

    .line 2
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 3
    :sswitch_0
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    new-array v0, v3, [I

    .line 4
    fill-array-data v0, :array_0

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :cond_0
    new-array v0, v3, [I

    .line 5
    fill-array-data v0, :array_1

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_1
    new-array v0, v3, [I

    .line 6
    fill-array-data v0, :array_2

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_2
    new-array v0, v3, [I

    .line 7
    fill-array-data v0, :array_3

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_3
    new-array v0, v3, [I

    .line 8
    fill-array-data v0, :array_4

    invoke-static {v0}, Lz/k;->s([I)V

    goto/16 :goto_0

    :sswitch_4
    new-array v0, v3, [I

    .line 9
    fill-array-data v0, :array_5

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_5
    new-array v0, v3, [I

    .line 10
    fill-array-data v0, :array_6

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_6
    new-array v0, v3, [I

    .line 11
    fill-array-data v0, :array_7

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_7
    new-array v0, v3, [I

    .line 12
    fill-array-data v0, :array_8

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_8
    new-array v0, v3, [I

    .line 13
    fill-array-data v0, :array_9

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_9
    new-array v0, v3, [I

    .line 14
    fill-array-data v0, :array_a

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_a
    new-array v0, v3, [I

    .line 15
    fill-array-data v0, :array_b

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_b
    new-array v0, v3, [I

    .line 16
    fill-array-data v0, :array_c

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_c
    new-array v0, v3, [I

    .line 17
    fill-array-data v0, :array_d

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_d
    new-array v0, v3, [I

    .line 18
    fill-array-data v0, :array_e

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    :sswitch_e
    new-array v0, v3, [I

    .line 19
    fill-array-data v0, :array_f

    invoke-static {v0}, Lz/k;->s([I)V

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v0}, Lk0/nk;->h3(Lk0/nk;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 21
    iget-object v0, p0, Lk0/nk$e;->a:Lk0/nk;

    iput v3, v0, Lk0/nk;->o:I

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1701bb -> :sswitch_e
        0x3001bc -> :sswitch_d
        0x3e01bb -> :sswitch_c
        0x3f01bb -> :sswitch_b
        0x4001bb -> :sswitch_a
        0x4001bc -> :sswitch_9
        0x4101bb -> :sswitch_8
        0x4201bb -> :sswitch_7
        0x4601bb -> :sswitch_6
        0x5101bb -> :sswitch_5
        0x5d01bb -> :sswitch_4
        0x6d01bb -> :sswitch_3
        0x6e01bb -> :sswitch_2
        0x8401bb -> :sswitch_1
        0xe801bb -> :sswitch_0
    .end sparse-switch

    :array_0
    .array-data 4
        0xe3
        0x2
        0x24
        0x14
        0x31
    .end array-data

    :array_1
    .array-data 4
        0xe3
        0x2
        0x24
        0x13
        0x31
    .end array-data

    :array_2
    .array-data 4
        0xe3
        0x2
        0x24
        0x10
        0x31
    .end array-data

    :array_3
    .array-data 4
        0xe3
        0x2
        0x24
        0xc
        0x31
    .end array-data

    :array_4
    .array-data 4
        0xe3
        0x2
        0x24
        0xb
        0x31
    .end array-data

    :array_5
    .array-data 4
        0xe3
        0x2
        0x24
        0xd
        0x31
    .end array-data

    :array_6
    .array-data 4
        0xe3
        0x2
        0x24
        0x7
        0x31
    .end array-data

    :array_7
    .array-data 4
        0xe3
        0x2
        0x24
        0xe
        0x31
    .end array-data

    :array_8
    .array-data 4
        0xe3
        0x2
        0x24
        0x6
        0x31
    .end array-data

    :array_9
    .array-data 4
        0xe3
        0x2
        0x24
        0x5
        0x31
    .end array-data

    :array_a
    .array-data 4
        0xe3
        0x2
        0x24
        0x17
        0x31
    .end array-data

    :array_b
    .array-data 4
        0xe3
        0x2
        0x24
        0x4
        0x31
    .end array-data

    :array_c
    .array-data 4
        0xe3
        0x2
        0x24
        0x3
        0x31
    .end array-data

    :array_d
    .array-data 4
        0xe3
        0x2
        0x24
        0x2
        0x31
    .end array-data

    :array_e
    .array-data 4
        0xe3
        0x2
        0x24
        0x8
        0x31
    .end array-data

    :array_f
    .array-data 4
        0xe3
        0x2
        0x24
        0x9
        0x31
    .end array-data
.end method
