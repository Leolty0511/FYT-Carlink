.class public Lplugins/EasyConn$b;
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
    iput-object p1, p0, Lplugins/EasyConn$b;->a:Lplugins/EasyConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->o:I

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lplugins/EasyConn$b;->a:Lplugins/EasyConn;

    const-string v1, "net.easyconn.BACKING_UP_START"

    invoke-static {v0, v1}, Lplugins/EasyConn;->X(Lplugins/EasyConn;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lplugins/EasyConn$b;->a:Lplugins/EasyConn;

    const-string v1, "net.easyconn.BACKING_UP_STOP"

    invoke-static {v0, v1}, Lplugins/EasyConn;->X(Lplugins/EasyConn;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
