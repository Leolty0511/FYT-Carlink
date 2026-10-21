.class public Lplugins/EasyConn$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lplugins/EasyConn;->b0(Landroid/content/Context;)V
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
    iput-object p1, p0, Lplugins/EasyConn$d;->a:Lplugins/EasyConn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lplugins/EasyConn$d;->a:Lplugins/EasyConn;

    const-string v1, "net.easyconn.connect.checkstatus"

    invoke-static {v0, v1}, Lplugins/EasyConn;->X(Lplugins/EasyConn;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lplugins/EasyConn$d;->a:Lplugins/EasyConn;

    const-string v1, "net.easyconn.link.checkstatus"

    invoke-static {v0, v1}, Lplugins/EasyConn;->X(Lplugins/EasyConn;Ljava/lang/String;)V

    return-void
.end method
