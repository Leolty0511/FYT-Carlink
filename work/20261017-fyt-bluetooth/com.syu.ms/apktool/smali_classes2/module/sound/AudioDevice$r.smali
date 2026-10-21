.class public Lmodule/sound/AudioDevice$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/AudioDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/AudioDevice;


# direct methods
.method public constructor <init>(Lmodule/sound/AudioDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/AudioDevice$r;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, [I

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$r;->a:Lmodule/sound/AudioDevice;

    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v3, p1, v3

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->y0(I)I

    move-result p1

    sub-int/2addr v3, p1

    invoke-virtual {v0, v2, v3}, Lmodule/sound/AudioDevice;->O(II)V

    return-void
.end method
