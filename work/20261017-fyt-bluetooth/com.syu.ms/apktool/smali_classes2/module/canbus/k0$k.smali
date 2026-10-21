.class public Lmodule/canbus/k0$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/k0;


# direct methods
.method public constructor <init>(Lmodule/canbus/k0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/k0$k;->a:Lmodule/canbus/k0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/k0$k;->a:Lmodule/canbus/k0;

    iget-boolean v0, v0, Lmodule/canbus/k0;->c0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lk0/qt;->a(I)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, La/b;->O:Ljava/lang/String;

    invoke-static {v0}, Lo1/u;->T(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lk0/qt;->f()V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lmodule/canbus/k0$k;->a:Lmodule/canbus/k0;

    invoke-static {v0}, Lmodule/canbus/k0;->e3(Lmodule/canbus/k0;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Ll0/b0;->o0(Ljava/lang/Runnable;)V

    return-void
.end method
