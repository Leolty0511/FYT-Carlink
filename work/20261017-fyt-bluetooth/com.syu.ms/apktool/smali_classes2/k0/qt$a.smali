.class public Lk0/qt$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/qt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lg/e;->a()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    sget v0, Lk0/nt;->a:I

    const-string v1, "8918\u6570\u636e\uff1a= XTS_800_480_12"

    const-string v2, "8918\u6570\u636e\uff1a= XTS_800_480_15"

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    sget-object v2, Lk0/qt;->c:[I

    invoke-virtual {v0, v2}, Lchip/Chip;->s([I)V

    .line 4
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :sswitch_1
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    sget-object v2, Lk0/qt;->c:[I

    invoke-virtual {v0, v2}, Lchip/Chip;->s([I)V

    .line 6
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :sswitch_2
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    sget-object v1, Lk0/qt;->d:[I

    invoke-virtual {v0, v1}, Lchip/Chip;->s([I)V

    .line 8
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :sswitch_3
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    sget-object v1, Lk0/qt;->d:[I

    invoke-virtual {v0, v1}, Lchip/Chip;->s([I)V

    .line 10
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Ln1/b;->s(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :sswitch_4
    sget-object v0, Lg/e;->a:Lg/g;

    check-cast v0, Lchip/Chip;

    sget-object v1, Lk0/qt;->b:[I

    invoke-virtual {v0, v1}, Lchip/Chip;->s([I)V

    .line 12
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    const-string v1, "8918\u6570\u636e\uff1a= ATS_480_272"

    invoke-virtual {v0, v1}, Ln1/b;->s(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x13d -> :sswitch_4
        0x1013d -> :sswitch_3
        0x2013d -> :sswitch_2
        0x3013d -> :sswitch_1
        0x4013d -> :sswitch_0
        0x5013d -> :sswitch_3
        0x6013d -> :sswitch_1
        0x7013d -> :sswitch_1
    .end sparse-switch
.end method
