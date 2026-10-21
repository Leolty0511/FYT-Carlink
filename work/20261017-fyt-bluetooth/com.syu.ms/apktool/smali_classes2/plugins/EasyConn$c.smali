.class public Lplugins/EasyConn$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


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
    iput-object p1, p0, Lplugins/EasyConn$c;->a:Lplugins/EasyConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string v0, "net.easyconn"

    .line 2
    invoke-static {p1, v0}, Lo1/s0;->j(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lplugins/EasyConn$c;->a:Lplugins/EasyConn;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lplugins/EasyConn;->c:Z

    .line 4
    invoke-static {p1, v0}, Lplugins/EasyConn;->Y(Lplugins/EasyConn;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
