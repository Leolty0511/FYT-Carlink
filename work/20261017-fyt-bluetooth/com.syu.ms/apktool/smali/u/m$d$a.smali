.class public Lu/m$d$a;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lu/m$d;


# direct methods
.method public constructor <init>(Lu/m$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/m$d$a;->a:Lu/m$d;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu/m$d;Lu/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lu/m$d$a;-><init>(Lu/m$d;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lu/m$d$a;->a:Lu/m$d;

    invoke-static {v0}, Lu/m$d;->q(Lu/m$d;)Lu/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/m;->haltedProcessMessage(Landroid/os/Message;)V

    const/4 p1, 0x1

    return p1
.end method
