.class public Lmodule/sound/AudioDevice$o;
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
    iput-object p1, p0, Lmodule/sound/AudioDevice$o;->a:Lmodule/sound/AudioDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, [I

    .line 2
    iget-object v0, p0, Lmodule/sound/AudioDevice$o;->a:Lmodule/sound/AudioDevice;

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-virtual {v0, p1}, Lmodule/sound/AudioDevice;->h(I)V

    return-void
.end method
