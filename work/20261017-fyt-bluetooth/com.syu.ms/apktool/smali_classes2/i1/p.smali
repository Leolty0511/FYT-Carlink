.class public Li1/p;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/p$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    .line 2
    new-instance p1, Li1/p$a;

    invoke-direct {p1, p0}, Li1/p$a;-><init>(Li1/p;)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 3
    invoke-virtual {p1}, Li1/e;->h()V

    return-void
.end method


# virtual methods
.method public l([I)V
    .locals 5

    .line 1
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBD recv222--> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-static {p1, v4, v3}, Lo1/b0;->e([III)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    .line 2
    aget v0, p1, v4

    const/16 v1, 0x11

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    aget v0, p1, v2

    const/4 v1, 0x6

    aget p1, p1, v1

    const/16 v1, 0x21c

    invoke-static {v0, p1, v3, v1}, Lk0/qt;->r(IIZI)V

    goto :goto_0

    .line 4
    :cond_1
    aget p1, p1, v3

    shr-int/2addr p1, v2

    and-int/2addr p1, v3

    .line 5
    sget v0, Lu0/b;->o:I

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 7
    invoke-static {}, Lk0/qt;->t()V

    goto :goto_0

    .line 8
    :cond_2
    sget-object p1, La/b;->O:Ljava/lang/String;

    invoke-static {p1}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    invoke-static {}, Lk0/qt;->f()V

    :cond_3
    :goto_0
    return-void
.end method
