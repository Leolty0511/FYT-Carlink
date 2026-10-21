.class public Lmodule/sound/C7739_48$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C7739_48;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C7739_48;


# direct methods
.method public constructor <init>(Lmodule/sound/C7739_48;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C7739_48$j;->a:Lmodule/sound/C7739_48;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)[I
    .locals 8

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move p1, v2

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    move p1, v3

    .line 1
    :goto_0
    iget-object v5, p0, Lmodule/sound/C7739_48$j;->a:Lmodule/sound/C7739_48;

    iget-object v5, v5, Lmodule/sound/C7739_48;->X8:Lmodule/sound/C7739_48$l;

    int-to-double v6, p1

    invoke-virtual {v5, v6, v7, v0}, Lmodule/sound/C7739_48$l;->a(DI)J

    move-result-wide v5

    long-to-int p1, v5

    aput p1, v1, v3

    .line 2
    iget-object p1, p0, Lmodule/sound/C7739_48$j;->a:Lmodule/sound/C7739_48;

    iget-object p1, p1, Lmodule/sound/C7739_48;->X8:Lmodule/sound/C7739_48$l;

    int-to-double v3, v4

    invoke-virtual {p1, v3, v4, v0}, Lmodule/sound/C7739_48$l;->a(DI)J

    move-result-wide v3

    long-to-int p1, v3

    aput p1, v1, v2

    return-object v1
.end method

.method public b(I)[I
    .locals 8

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v1

    move v3, v2

    move v4, v3

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    move v3, v1

    move p1, v2

    move v4, p1

    goto :goto_0

    :cond_1
    move v4, v1

    move p1, v2

    move v3, p1

    .line 1
    :goto_0
    iget-object v5, p0, Lmodule/sound/C7739_48$j;->a:Lmodule/sound/C7739_48;

    iget-object v5, v5, Lmodule/sound/C7739_48;->X8:Lmodule/sound/C7739_48$l;

    int-to-double v6, p1

    const/4 p1, 0x2

    invoke-virtual {v5, v6, v7, p1}, Lmodule/sound/C7739_48$l;->a(DI)J

    move-result-wide v5

    long-to-int v5, v5

    aput v5, v0, v2

    .line 2
    iget-object v2, p0, Lmodule/sound/C7739_48$j;->a:Lmodule/sound/C7739_48;

    iget-object v2, v2, Lmodule/sound/C7739_48;->X8:Lmodule/sound/C7739_48$l;

    int-to-double v5, v3

    invoke-virtual {v2, v5, v6, p1}, Lmodule/sound/C7739_48$l;->a(DI)J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 3
    iget-object v1, p0, Lmodule/sound/C7739_48$j;->a:Lmodule/sound/C7739_48;

    iget-object v1, v1, Lmodule/sound/C7739_48;->X8:Lmodule/sound/C7739_48$l;

    int-to-double v2, v4

    invoke-virtual {v1, v2, v3, p1}, Lmodule/sound/C7739_48$l;->a(DI)J

    move-result-wide v1

    long-to-int v1, v1

    aput v1, v0, p1

    return-object v0
.end method
