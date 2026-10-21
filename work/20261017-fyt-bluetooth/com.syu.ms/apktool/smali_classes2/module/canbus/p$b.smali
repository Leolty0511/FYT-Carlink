.class public Lmodule/canbus/p$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/canbus/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/canbus/p;


# direct methods
.method public constructor <init>(Lmodule/canbus/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/canbus/p$b;->a:Lmodule/canbus/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmodule/canbus/p$b;->a:Lmodule/canbus/p;

    invoke-static {v0}, Lmodule/canbus/p;->d3(Lmodule/canbus/p;)V

    return-void
.end method
