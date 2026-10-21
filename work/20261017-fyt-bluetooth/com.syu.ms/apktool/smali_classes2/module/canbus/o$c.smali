.class public Lmodule/canbus/o$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/o;


# direct methods
.method public constructor <init>(Lmodule/canbus/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/o$c;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f2:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lmodule/canbus/o$c;->a:Lmodule/canbus/o;

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lmodule/canbus/o;->g3(Lmodule/canbus/o;I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lmodule/canbus/o$c;->a:Lmodule/canbus/o;

    const/16 v1, 0x1d

    invoke-static {v0, v1}, Lmodule/canbus/o;->g3(Lmodule/canbus/o;I)V

    :goto_0
    return-void
.end method
