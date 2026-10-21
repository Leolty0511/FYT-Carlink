.class public Lo/b$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lo/b;


# direct methods
.method public constructor <init>(Lo/b;Landroid/os/Looper;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/b$b;->a:Lo/b;

    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p2, p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lo/b$b;->a:Lo/b;

    iget-object v0, v0, Lo/b;->d:Lo/b$a;

    invoke-interface {v0, p1}, Lo/b$a;->executeMessage(Landroid/os/Message;)V

    return-void
.end method
