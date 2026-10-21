.class public Lplugins/ZLink$n;
.super Lc/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/ZLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lplugins/ZLink;


# direct methods
.method public constructor <init>(Lplugins/ZLink;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/ZLink$n;->e:Lplugins/ZLink;

    invoke-direct {p0}, Lc/d;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_0

    :goto_0
    move v1, v4

    goto :goto_3

    .line 1
    :cond_0
    iget-object p1, p0, Lplugins/ZLink$n;->e:Lplugins/ZLink;

    iget-boolean p1, p1, Lplugins/ZLink;->g:Z

    if-eqz p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v3}, Lh0/f;->h(I)V

    goto :goto_2

    .line 3
    :cond_2
    iget-object p1, p0, Lplugins/ZLink$n;->e:Lplugins/ZLink;

    iget-boolean p1, p1, Lplugins/ZLink;->g:Z

    if-eqz p1, :cond_3

    move v1, v2

    :goto_1
    move v0, v3

    goto :goto_3

    .line 4
    :cond_3
    sget-object p1, Lh0/c;->b:Lh0/f;

    invoke-interface {p1, v0}, Lh0/f;->h(I)V

    :goto_2
    move v0, v3

    goto :goto_0

    :goto_3
    if-lez v1, :cond_4

    .line 5
    iget-object p1, p0, Lplugins/ZLink$n;->e:Lplugins/ZLink;

    invoke-virtual {p1, v1}, Lplugins/ZLink;->i0(I)V

    :cond_4
    return v0
.end method

.method public c(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
