.class public Lplugins/EasyConn$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lplugins/EasyConn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lplugins/EasyConn;


# direct methods
.method public constructor <init>(Lplugins/EasyConn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lplugins/EasyConn$a;->a:Lplugins/EasyConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lplugins/EasyConn$a;->a:Lplugins/EasyConn;

    iget-boolean v1, v0, Lplugins/EasyConn;->b:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lplugins/EasyConn;->e:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lplugins/EasyConn;->b:Z

    :cond_0
    return-void
.end method
