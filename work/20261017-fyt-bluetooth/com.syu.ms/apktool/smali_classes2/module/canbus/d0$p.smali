.class public Lmodule/canbus/d0$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/d0;


# direct methods
.method public constructor <init>(Lmodule/canbus/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/d0$p;->a:Lmodule/canbus/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lw0/d;->H:Ljava/lang/String;

    const/16 v1, 0x70

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/d0$p;->a:Lmodule/canbus/d0;

    const-string v2, "----"

    invoke-static {v0, v1, v2}, Lmodule/canbus/d0;->F3(Lmodule/canbus/d0;BLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lmodule/canbus/d0$p;->a:Lmodule/canbus/d0;

    invoke-static {v2, v1, v0}, Lmodule/canbus/d0;->F3(Lmodule/canbus/d0;BLjava/lang/String;)V

    :goto_0
    return-void
.end method
