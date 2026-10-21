.class public Le1/j;
.super Le1/l;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Le1/l;-><init>()V

    .line 2
    new-instance v0, Le1/j$a;

    invoke-direct {v0, p0}, Le1/j$a;-><init>(Le1/j;)V

    iput-object v0, p0, Le1/j;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1/j;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 1
    sget-object p1, Lu0/b;->c:Lu0/h;

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    sget-object p1, Lu0/b;->c:Lu0/h;

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Lu0/h;->c(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Le1/j;->a:Ljava/lang/Runnable;

    invoke-static {v0}, Le1/b;->d(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public h(IIII)V
    .locals 6

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p1, v4, :cond_0

    const/16 p1, 0x14

    .line 1
    invoke-static {p2, v5, p1}, Lo1/o0;->a(III)I

    move-result p2

    .line 2
    invoke-static {p3, v5, p1}, Lo1/o0;->a(III)I

    move-result p3

    .line 3
    invoke-static {p4, v5, p1}, Lo1/o0;->a(III)I

    move-result p1

    new-array p4, v3, [I

    .line 4
    fill-array-data p4, :array_0

    invoke-static {p4}, Lz/k;->o([I)V

    new-array p4, v3, [I

    aput v5, p4, v5

    const/16 v3, 0xb1

    aput v3, p4, v4

    aput p2, p4, v2

    aput p3, p4, v1

    aput p1, p4, v0

    .line 5
    invoke-static {p4}, Lz/k;->o([I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    .line 6
    invoke-static {p2, v5, p1}, Lo1/o0;->a(III)I

    move-result p2

    .line 7
    invoke-static {p3, v5, p1}, Lo1/o0;->a(III)I

    move-result p3

    .line 8
    invoke-static {p4, v5, p1}, Lo1/o0;->a(III)I

    move-result p1

    new-array p4, v3, [I

    aput v5, p4, v5

    const/16 v3, 0xb0

    aput v3, p4, v4

    aput p2, p4, v2

    aput p3, p4, v1

    aput p1, p4, v0

    .line 9
    invoke-static {p4}, Lz/k;->o([I)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0xb0
        0x6
        0x0
        0x6
    .end array-data
.end method

.method public i(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/16 v0, 0xa

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Le1/j;->j(I)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {p0, v0}, Le1/j;->j(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final j(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/syu/jni/ToolsJni;->cmd_22_set_video_mode(I)I

    return-void
.end method
