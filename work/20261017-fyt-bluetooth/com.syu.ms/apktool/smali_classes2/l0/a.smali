.class public Ll0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/b0$a;


# static fields
.field public static b:Li1/b0;


# instance fields
.field public a:Lo1/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d([I)V
    .locals 3

    if-eqz p0, :cond_2

    .line 1
    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ll0/a;->b:Li1/b0;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    array-length v2, p0

    invoke-static {p0, v1, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {v0, p0}, Lb/c$b;->f([I)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lz/a;->b:Lo1/e0;

    invoke-static {p0}, Lz/k;->b([I)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lo1/e0;->i([B)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Li1/b0;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sput-object p1, Ll0/a;->b:Li1/b0;

    :cond_0
    return-void
.end method

.method public b([B)V
    .locals 4

    const/16 v0, 0xc

    .line 1
    invoke-static {v0}, Lg/f;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, La/f;->p()Ln1/b;

    move-result-object v0

    sget-object v1, Lutil/log/LogType;->e:Lutil/log/LogType;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v3}, Lo1/b0;->d([BII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ln1/b;->t(Lutil/log/LogType;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c([B)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll0/a;->a:Lo1/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lo1/q;->b([B)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Ll0/a;->b([B)V

    :goto_0
    return-void
.end method

.method public e(Lo1/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll0/a;->a:Lo1/q;

    return-void
.end method

.method public varargs f([I)V
    .locals 0

    .line 1
    invoke-static {p1}, Ll0/a;->d([I)V

    return-void
.end method
