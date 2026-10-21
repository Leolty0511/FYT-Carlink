.class public Lk0/u2$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/u2;


# direct methods
.method public constructor <init>(Lk0/u2;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u2$c;->a:Lk0/u2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lk0/qt;->f()V

    :cond_0
    return-void
.end method
