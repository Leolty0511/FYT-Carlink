.class public Lmodule/sound/C8288$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C8288;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C8288;


# direct methods
.method public constructor <init>(Lmodule/sound/C8288;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C8288$e;->a:Lmodule/sound/C8288;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Ly0/f;->x:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    sget v3, Ly0/f;->J:I

    const/4 v4, 0x2

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v4

    .line 3
    :goto_1
    iget-object v5, p0, Lmodule/sound/C8288$e;->a:Lmodule/sound/C8288;

    const/4 v6, 0x3

    new-array v6, v6, [I

    aput v2, v6, v2

    const/16 v2, 0xa7

    aput v2, v6, v1

    or-int/2addr v0, v3

    or-int/lit8 v0, v0, 0x4

    aput v0, v6, v4

    invoke-virtual {v5, v6}, Lmodule/sound/C8288;->L1([I)V

    return-void
.end method
