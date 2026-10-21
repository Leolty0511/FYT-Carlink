.class public Lmodule/canbus/c$m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/c;


# direct methods
.method public constructor <init>(Lmodule/canbus/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/c$m;->a:Lmodule/canbus/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lk0/nt;->c:I

    const/16 v1, 0x44

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/c$m;->a:Lmodule/canbus/c;

    invoke-static {v0}, Lmodule/canbus/c;->f3(Lmodule/canbus/c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ll0/c0;->B0()V

    .line 4
    :goto_0
    iget-object v0, p0, Lmodule/canbus/c$m;->a:Lmodule/canbus/c;

    const/4 v1, 0x4

    iput v1, v0, Lmodule/canbus/c;->v:I

    return-void
.end method
