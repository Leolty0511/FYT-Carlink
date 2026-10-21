.class public Li1/q;
.super Li1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li1/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li1/a<",
        "Li1/q$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Li1/a;-><init>(II)V

    .line 2
    new-instance p1, Li1/q$a;

    invoke-direct {p1, p0}, Li1/q$a;-><init>(Li1/q;)V

    iput-object p1, p0, Li1/s;->a:Li1/e;

    .line 3
    invoke-virtual {p1}, Li1/e;->h()V

    return-void
.end method


# virtual methods
.method public l([I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 2
    aget p1, p1, v1

    const/16 v1, 0x80

    const/4 v2, 0x1

    const/16 v3, 0x7f

    invoke-static {p1, v0, v1, v2, v3}, Lk0/qt;->q(IIIZI)V

    :goto_0
    return-void
.end method
