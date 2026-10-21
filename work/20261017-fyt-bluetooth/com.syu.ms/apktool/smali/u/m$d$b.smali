.class public Lu/m$d$b;
.super Lu/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/m$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lu/m$d;


# direct methods
.method public constructor <init>(Lu/m$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/m$d$b;->a:Lu/m$d;

    invoke-direct {p0}, Lu/l;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu/m$d;Lu/m$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lu/m$d$b;-><init>(Lu/m$d;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
