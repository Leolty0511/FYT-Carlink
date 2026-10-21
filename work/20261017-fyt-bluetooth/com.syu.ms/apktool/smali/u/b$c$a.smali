.class public Lu/b$c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/b$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/os/Message;

.field public final synthetic c:Lu/b$c;


# direct methods
.method public constructor <init>(Lu/b$c;Landroid/os/Looper;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lu/b$c$a;->c:Lu/b$c;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/b$c$a;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lu/b$c;Landroid/os/Looper;Lu/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lu/b$c$a;-><init>(Lu/b$c;Landroid/os/Looper;)V

    return-void
.end method

.method public static synthetic a(Lu/b$c$a;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/b$c$a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic b(Lu/b$c$a;)Landroid/os/Message;
    .locals 0

    .line 1
    iget-object p0, p0, Lu/b$c$a;->b:Landroid/os/Message;

    return-object p0
.end method

.method public static synthetic c(Lu/b$c$a;Landroid/os/Message;)Landroid/os/Message;
    .locals 0

    .line 1
    iput-object p1, p0, Lu/b$c$a;->b:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lu/b$c$a;->b:Landroid/os/Message;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 3
    iget-object p1, p0, Lu/b$c$a;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lu/b$c$a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
