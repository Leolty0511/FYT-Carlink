.class public Lshare/ShareProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    .line 1
    sget-boolean v0, Lm1/a;->c:Z

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    .line 1
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p2, -0x1

    :cond_0
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    return-object p1

    .line 3
    :pswitch_1
    new-instance p1, Ll1/a;

    invoke-static {}, Lg/e;->a()I

    move-result p2

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 4
    :pswitch_2
    new-instance p1, Ll1/a;

    invoke-static {}, Ln0/k4;->c()I

    move-result p2

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 5
    :pswitch_3
    new-instance p1, Ll1/a;

    sget p2, Ln0/j4;->a:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 6
    :pswitch_4
    new-instance p1, Ll1/a;

    invoke-static {}, Lg/e;->p()I

    move-result p2

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Ll1/a;

    sget p2, Ln0/j4;->b:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 8
    :pswitch_6
    new-instance p1, Ll1/a;

    sget p2, Lp0/b;->g:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 9
    :pswitch_7
    new-instance p1, Ll1/a;

    sget p2, Lv0/b;->a:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 10
    :pswitch_8
    new-instance p1, Ll1/a;

    sget p2, Lc1/a;->a:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 11
    :pswitch_9
    new-instance p1, Ll1/a;

    sget p2, Lo0/e;->a:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 12
    :pswitch_a
    new-instance p1, Ll1/a;

    sget p2, Ly0/f;->a:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 13
    :pswitch_b
    new-instance p1, Ll1/a;

    sget p2, Lk0/nt;->v:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    .line 14
    :pswitch_c
    new-instance p1, Ll1/a;

    sget p2, Ld1/d;->c:I

    invoke-direct {p1, p2}, Ll1/a;-><init>(I)V

    return-object p1

    :catch_0
    move-exception p2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
