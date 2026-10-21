.class public Lmodule/canbus/r$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/r;


# direct methods
.method public constructor <init>(Lmodule/canbus/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/r$d;->a:Lmodule/canbus/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmodule/canbus/r$d;->a:Lmodule/canbus/r;

    sget-object v1, Lh0/c;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lmodule/canbus/r;->j3(Lmodule/canbus/r;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lmodule/canbus/r$d;->a:Lmodule/canbus/r;

    invoke-static {v0}, Lmodule/canbus/r;->i3(Lmodule/canbus/r;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lmodule/canbus/r$d;->a:Lmodule/canbus/r;

    const-string v1, ""

    invoke-static {v0, v1}, Lmodule/canbus/r;->j3(Lmodule/canbus/r;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lmodule/canbus/r$d;->a:Lmodule/canbus/r;

    invoke-static {v0}, Lmodule/canbus/r;->i3(Lmodule/canbus/r;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmodule/canbus/r;->k3(Lmodule/canbus/r;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
