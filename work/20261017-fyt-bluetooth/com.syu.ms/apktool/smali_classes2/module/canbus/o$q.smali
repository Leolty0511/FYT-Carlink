.class public Lmodule/canbus/o$q;
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
    iput-object p1, p0, Lmodule/canbus/o$q;->a:Lmodule/canbus/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget v0, Lu0/b;->D:I

    const/16 v1, -0x3c

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lmodule/canbus/o$q;->a:Lmodule/canbus/o;

    sget-object v2, Lu0/b;->i3:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lmodule/canbus/o;->r3(Lmodule/canbus/o;BLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lmodule/canbus/o$q;->a:Lmodule/canbus/o;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lmodule/canbus/o;->r3(Lmodule/canbus/o;BLjava/lang/String;)V

    :goto_0
    return-void
.end method
